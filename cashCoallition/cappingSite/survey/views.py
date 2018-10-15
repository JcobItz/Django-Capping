from django.shortcuts import render

# Create your views here.
from survey.models import Survey, Prompt, Choice, Response


def index(request):
    """View function for home page of site."""

    # Generate counts of some of the main objects
    num_prompts = Prompt.objects.all()
    num_choices = Choice.objects.all()
    prompt_one = Prompt.objects.filter(pid=1)
    choices_one = Choice.objects.filter(pid=1)

    context = {
        'num_prompts': num_prompts,
        'num_choices': num_choices,
        'prompt_one': prompt_one,
        'choices_one': choices_one,
    }

    # Render the HTML template index.html with the data in the context variable
    return render(request, 'index.html', context=context)
