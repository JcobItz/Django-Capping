from django.shortcuts import render, HttpResponseRedirect, HttpResponse
from django import forms
from django.http import JsonResponse, HttpResponseNotAllowed
from django.core import serializers

# Create your views here.
from .models import Survey, Question, Choice, Response, Email

from .forms import ResponseForm, EmailForm
from django.shortcuts import render
import json 
from random import randint
from django.views.generic import TemplateView
from chartjs.views.lines import BaseLineChartView





def index(request, survey_id, question_num):
    """View function for home page of site."""
    # Keeps track of what question user is on
    # Counts total number of questions stored in database
    # Generate counts of some of the main objects


    #generate new userID if the user has not been assigned one yet
    if 'userID' not in request.session:
        user = 0
        request.session['userID'] = 0
        for r in Response.objects.all():
            
            if r.userID >= user:
                user+=1
                request.session['userID'] = user
    
    question = Question.objects.get(question_num=question_num, sid=Survey.objects.get(sid=survey_id))
    is_multiple_choice =question.is_multiple_choice
    allow_multiple = question.allow_multiple
    allow_other = question.allow_other

    question_count = Question.objects.filter(sid=survey_id).count()
    #if the request method is post, then we are submitting a response(ResponseForm)
    if request.method == 'POST':
        #create the form based on what type of question it is
        if allow_multiple:
            form = ResponseForm(question.qid, is_multiple_choice, allow_multiple, request.POST)
        else:
            form = ResponseForm(question.qid, is_multiple_choice, False, request.POST)
        #validate the form
        if form.is_valid():
            print("valid")
            alreadyExists = False
            #check if userID already has a response for this question, if it does update previous response
            for r in Response.objects.filter(userID = request.session['userID']):
                if r.qid == question:
                    alreadyExists = True
                    r.response_text = form.cleaned_data['response_text']
                    r.save()
            print(alreadyExists)
            #if the user has not answered this question yet save it as a new response
            if alreadyExists == False:
                resp = Response(response_text = form.cleaned_data['response_text'], userID = request.session['userID'], qid=question, sid=Survey.objects.get(sid=survey_id))
                resp.save()
            next = question_num+1
            if question_num == question_count:
                try:

                    key = request.session.pop('userID')
                except KeyError:
                    print('session still open')
                return HttpResponseRedirect('/submit/')
            #after the response is sumbitted, send the user to the next question
            return HttpResponseRedirect('/survey/' +str(survey_id) + '/' +str(next)+'/')

    else: #if the request method is not post
        #create a new response form based on the type of question
        if allow_multiple:
            request.session['num_selected'] = 0;
            form = ResponseForm(question.qid, is_multiple_choice, allow_multiple)
        else:
            form = ResponseForm(question.qid, is_multiple_choice, allow_multiple)

        choice_list = Choice.objects.filter(qid=question).order_by('cid')
   
        # for debugging purposes
        print(question_count)
        print(question_num)
        print(is_multiple_choice)
        #print(request.session['userID'])
        # Array to store choices
        choice = []

        # Loops through choices
        for i in choice_list:
            choice.append(i.choice_text)
        #the context passes variables to the html template
        context = {
            'question': question,
            'choice': choice,
            'question_num': question_num,
            'question_count': question_count,
            'is_multiple_choice': is_multiple_choice,
            'form': form,
            'allow_multiple': allow_multiple,
            'allow_other': allow_other,
            'survey_num':survey_id,
            
        }
   
    # Render the HTML template index.html with the data in the context variable
        return render(request, 'index.html', context=context)


def about(request):
    """View function for about page of site."""
    context = {
    }
    return render(request, 'about.html', context=context)


def submit(request):
    #once the user answers the final question, allow them to enter email if they want
    if request.method=='POST':
        form = EmailForm(request.POST)
        if form.is_valid():
            email = Email(email=form.cleaned_data['email'])
            email.save()
    else:
        form = EmailForm()
    context = {
        'form': form,
    }
    return render(request, 'submit.html', context=context)


def charttest(request, q = 1):
    #this view displays a chart for a given question
    #form = QuestionForm()
    choices = []
    #compile a list of choices for the selected question
    for c in Choice.objects.filter(qid = q):
        choices.append(c.choice_text)
        
     
    dict = {}
    for i in choices:
        dict[i] = 0
    
    #this loop handles answers that allow multiple selections
    #they are stored in an array, so we have to separate each selection to calculate the frequency
    for i in Response.objects.filter(qid = q):
        if "[" in i.response_text:
            print("[]")
            i.response_text = i.response_text.replace("[", "")
            i.response_text = i.response_text.replace("]","")
            ans = i.response_text.split(", ")
            
            for j in ans:
                j = j.strip("\'")
                print(j)
                if j in dict:
                    print("we got it in")
                    dict[j] += 1;



        else:
            if i.response_text in dict:
                #if its a choice for this question, we add one to the value of the dictionary entry with the choice as its key
                dict[i.response_text] += 1
        

            else:
                continue
    freq = []
    #then put all of the frequencies in an array, now each frequency has the same index in freq as the corresponding choice in the choices array
    for r in dict:
        freq.append(0)
    x = 0
    for r, f in dict.items():
        freq[x] = dict[r]
        x += 1
    for each in freq:
        print(each)
    qs = Question.objects.all()
    questions = []
    qids = []
    for i in qs:
        questions.append(i.question_text)
        qids.append(i.qid)
    context = {
        'choices': choices,
        'freq': freq,
        'questions': questions,
        'qids': qids,
        #'form': form,
        'q': q
        }
    return render(request, 'charttest.html', context = context)

def update_session(request):
    if not request.is_ajax() or not request.method=='POST':
        return HttpResponseNotAllowed(['POST'])

    request.session['num_selected'] = request.GET.get('num_selected', None)
    return JsonResponse('ok')