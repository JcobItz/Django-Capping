from django import forms
from django.forms import ModelForm
from .models import Survey, Question, Choice, Response


class ResponseForm(ModelForm):
    class Meta:
        model = Response
        fields = ['response_text']

    def __init__(self, qnum, allow_multiple, *args, **kwargs):
        super(ResponseForm, self).__init__(*args, **kwargs)
        self.fields['response_text'].queryset = Choice.objects.filter(qid=qnum)
        if allow_multiple:
            self.fields['response_text'].widget = forms.CheckboxSelectMultiple()


