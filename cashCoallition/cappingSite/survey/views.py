from django.shortcuts import render

# Create your views here.
from survey.models import Survey, Question, Choice, Response


def index(request):
    """View function for home page of site."""
    # Generate counts of some of the main objects
    question_one = Question.objects.get(qid=1)
    choices_one = Choice.objects.filter(qid=1)


    context = {
        'question_one': question_one,
        'choices_one': choices_one,
    }

    # Render the HTML template index.html with the data in the context variable
    return render(request, 'index.html', context=context)


def choiceIterator(choices_one):
    num_choices = choices_one.count()
    count = 0
    while count < num_choices:
        print(Choice.objects.get(qid=1))
        count = count + 1

