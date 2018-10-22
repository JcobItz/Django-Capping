from django.contrib import admin
from .models import Survey, Question, Choice, Response
from django.contrib.auth.models import Group

# Register your models here
# admin.site.register(Survey) -- not needed for Linda's purposes...
admin.site.register(Question)
admin.site.register(Choice)
admin.site.register(Response)

# Customize site header
admin.site.site_header = 'Cash Coalition Dashboard'

# Text to put at the end of each page's <title>.
admin.site.site_title = 'Cash Coalition'

# Remove groups
admin.site.unregister(Group)
