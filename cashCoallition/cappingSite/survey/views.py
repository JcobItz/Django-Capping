from django.shortcuts import render

# Create your views here.
from survey.models import Survey, Question, Choice, Response
from django.shortcuts import render
from django.http import Http404


def index(request, question_num=1):
    """View function for home page of site."""
    # Keeps track of what question user is on
    # Counts total number of questions stored in database
    # Generate counts of some of the main objects
    question = Question.objects.get(qid=question_num)
    choice_list = Choice.objects.filter(qid=question_num).order_by('-cid')
    # Array to store choices
    choice = []
    # Loops through choices
    for i in choice_list:
        choice.append(i.choice_text)

    context = {
        'question': question,
        'choice': choice,
        'question_num': question_num,
    }
    # Render the HTML template index.html with the data in the context variable
    return render(request, 'index.html', context=context)


def about(request):
    """View function for home page of site."""
    context = {
    }
    return render(request, 'about.html', context=context)









