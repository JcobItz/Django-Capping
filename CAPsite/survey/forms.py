from django import forms
from django.forms import ModelForm
from .models import Survey, Question, Choice, Response


class ResponseForm(ModelForm):
    class Meta:
        model = Response
        fields = ['response_text']

    def __init__(self, qnum, *args, **kwargs):
        super(ResponseForm, self).__init__(*args, **kwargs)
        self.fields['response_text'].queryset = Choice.objects.filter(qid=qnum)


class QuestionForm(forms.Form):
    qs = Question.objects.all()
    question = forms.ChoiceField(choices=qs)
