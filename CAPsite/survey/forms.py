from django import forms
from django.forms import ModelForm
from .models import Survey, Question, Choice, Response, Email


class ResponseForm(forms.ModelForm):
   #form for responses
    class Meta:
        model = Response  #the model that the form will submit to
        fields = ['response_text']  #fields for form

    def __init__(self, qnum, multiple_choice, allow_multiple, *args, **kwargs): # init override to allow extra parameters
        super(ResponseForm, self).__init__(*args, **kwargs)
        self.fields['response_text'].queryset = Choice.objects.filter(qid=qnum) #set which choices to include
        if multiple_choice:
            if allow_multiple:
                self.fields['response_text'].widget = forms.CheckboxSelectMultiple() #checkboxes if multiple answers are allowed
        else:
            self.fields['response_text'] = forms.CharField(widget=forms.Textarea, label='') # textarea if open response
class EmailForm(forms.ModelForm):
    #form to submit email
    class Meta:
        model = Email
        fields = ['email']
