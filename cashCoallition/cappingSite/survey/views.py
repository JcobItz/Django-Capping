from django.shortcuts import render

# Create your views here.
from survey.models import Survey, Question, Choice, Response


def index(request):
    """View function for home page of site."""

    # Generate counts of some of the main objects
    question_one = Question.objects.filter(qid=1)
    choices_one = Choice.objects.filter(qid=1)

    context = {
        'question_one': question_one,
        'choices_one': choices_one,
    }

    # Render the HTML template index.html with the data in the context variable
    return render(request, 'index.html', context=context)
