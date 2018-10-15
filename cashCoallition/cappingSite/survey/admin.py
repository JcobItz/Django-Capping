from django.contrib import admin
from .models import Survey, Prompt, Choice, Response

# Register your models here
admin.site.register(Survey)
admin.site.register(Prompt)
admin.site.register(Choice)
admin.site.register(Response)

#Customize site header
admin.site.site_header = 'Cash Coalition Dashboard'

# Text to put at the end of each page's <title>.
admin.site.site_title = 'Cash Coalition'
