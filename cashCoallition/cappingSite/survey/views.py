from django.shortcuts import render

# Create your views here.
from survey.models import Survey, Question, Choice, Response


def index(request):
    """View function for home page of site."""
    # Keeps track of what question user is on
    question_num = 1
    # Counts total number of questions stored in database
    question_count = Question.objects.count()
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

    # execute this code when either button is clicked
    # not working, do we need javascript?
    if request.GET.get('next') == 'next':
        if question_num < question_count:
            question_num += 1
        else:
            question_num = question_num

    if request.GET.get('previous') == 'previous':
        if question_num > 1:
            question_num -= 1
        else:
            question_num = 1

    # Render the HTML template index.html with the data in the context variable
    return render(request, 'index.html', context=context)



