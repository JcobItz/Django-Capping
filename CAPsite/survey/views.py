from django.shortcuts import render, HttpResponseRedirect, HttpResponse
from django import forms
from django.http import JsonResponse
from django.core import serializers

# Create your views here.
from .models import Survey, Question, Choice, Response

from .forms import ResponseForm, QuestionForm
from django.shortcuts import render
import json 
from random import randint
from django.views.generic import TemplateView
from chartjs.views.lines import BaseLineChartView

questions =[]

for x in Question.objects.all():
    questions.append(x.qid)


def index(request, question_num=questions[0]):
    """View function for home page of site."""
    # Keeps track of what question user is on
    # Counts total number of questions stored in database
    # Generate counts of some of the main objects

    if 'userID' not in request.session:
        user = 0
        request.session['userID'] = 0
        for r in Response.objects.all():
            print("loop")
            if r.userID >= user:
                user+=1
                request.session['userID'] = user
    
    question = Question.objects.get(qid=question_num)
    is_multiple_choice = Question.objects.get(qid=question_num).is_multiple_choice
    question_count = Question.objects.count()
    if request.method == 'POST':
        print("is POST")
        form = ResponseForm(question.qid, request.POST)
       
        if form.is_valid():
            print("valid")
            alreadyExists = False
            for r in Response.objects.filter(userID = request.session['userID']):
                if r.qid == question:
                    alreadyExists = True
                    r.response_text = form.cleaned_data['response_text']
                    r.save()
                    
            if alreadyExists == False:
                resp = Response(response_text = form.cleaned_data['response_text'], userID = request.session['userID'], qid=question)
                resp.save()
            next = question_num+1
            if question_num == question_count:
                try:

                    key = request.session.pop('userID')
                except KeyError:
                    print('session still open')
                return HttpResponse("Thank you for completing the survey")
            return HttpResponseRedirect('/survey/'+str(next)+'/')

    else:

        form = ResponseForm(question.qid)

        choice_list = Choice.objects.filter(qid=question_num).order_by('cid')
   
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

        context = {
            'question': question,
            'choice': choice,
            'question_num': question_num,
            'question_count': question_count,
            'is_multiple_choice': is_multiple_choice,
            'form': form,
       
        
        }
   
    # Render the HTML template index.html with the data in the context variable
        return render(request, 'index.html', context=context)


def about(request):
    """View function for about page of site."""
    context = {
    }
    return render(request, 'about.html', context=context)







def charttest(request, q = 1):
    #form = QuestionForm()
    choices = []
    for c in Choice.objects.filter(qid = q):
        choices.append(c.choice_text)
        
      
    dict = {}
    for i in choices:
        dict[i] = 0
    
    
    for i in Response.objects.filter(qid = q):
        if i.response_text in dict:
            
            dict[i.response_text] += 1
            
        else:
            continue
    freq = []
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
