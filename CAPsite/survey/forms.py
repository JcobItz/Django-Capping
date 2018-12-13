from django import forms
from django.forms import ModelForm
from .models import Survey, Question, Choice, Response, Email


class ResponseForm(forms.ModelForm):
   
    class Meta:
        model = Response
        fields = ['response_text']

    # survey submission form
    def __init__(self, qnum, multiple_choice, allow_multiple, *args, **kwargs):
        super(ResponseForm, self).__init__(*args, **kwargs)
        self.fields['response_text'].queryset = Choice.objects.filter(qid=qnum)
        if multiple_choice:
            if allow_multiple:
                self.fields['response_text'].widget = forms.CheckboxSelectMultiple()
        else:
            self.fields['response_text'] = forms.CharField(widget=forms.Textarea, label='')


# email submission form
class EmailForm(forms.ModelForm):
    class Meta:
        model = Email
        fields = ['email']
