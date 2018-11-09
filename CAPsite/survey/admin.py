from django.contrib import admin
from .models import Survey, Question, Choice, Response
from django.contrib.auth.models import Group
from import_export.admin import ImportExportModelAdmin

# Register your models here
# admin.site.register(Survey) -- not needed for Linda's purposes...

# Customize site header
admin.site.site_header = 'CAP Dutchess'

# Text to put at the end of each page's <title>.
admin.site.site_title = 'CAP Dutchess'

# Remove groups 
admin.site.unregister(Group)


class ChoiceTabularInline(admin.TabularInline):
    model = Choice

    class Media:
        js = ('http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js',
              '/staticfiles/admin/js/assets_admin.js',
              )
#   js to hide choices inline


class QuestionAdmin(admin.ModelAdmin):
    list_display = ['question_text', 'is_multiple_choice']
    search_fields = ['question_text']
    exclude = ('sid',)
    inlines = [ChoiceTabularInline]


admin.site.register(Question, QuestionAdmin)


class ChoiceAdmin(admin.ModelAdmin):
    list_display = ['choice_text', 'qid']
    list_filter = ['qid']
    search_fields = ['choice_text']


admin.site.register(Choice, ChoiceAdmin)


class ResponseAdmin(ImportExportModelAdmin):
    list_display = ['qid', 'response_text', 'userID']

    class Media:
        js = ('http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js',
              '/staticfiles/admin/js/chartadmin.js',
              )


#   js to add chart link


admin.site.register(Response, ResponseAdmin)




