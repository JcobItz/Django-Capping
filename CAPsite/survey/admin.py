from django.contrib import admin
from .models import Survey, Question, Choice, Response
from django.contrib.auth.models import Group
from import_export.admin import ImportExportModelAdmin
from django_globals import globals
import nested_admin
from import_export.formats import base_formats



# Register your models here
# admin.site.register(Survey) -- not needed for Linda's purposes...

# Customize site header
admin.site.site_header = 'CAP Dutchess'

# Text to put at the end of each page's <title>.
admin.site.site_title = 'CAP Dutchess'

# Remove groups 
admin.site.unregister(Group)


class ChoiceTabularInline(nested_admin.NestedTabularInline):
    model = Choice

    class Media:
        js = ('http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js',
              '/staticfiles/admin/js/assets_admin.js',
              )
#   js to hide choices inline

class QuestionTabularInline(nested_admin.NestedTabularInline):
    model = Question

    list_display = ['question_text', 'is_multiple_choice', 'allow_multiple']
    search_fields = ['question_text']

    inlines = [ChoiceTabularInline]

    class Media:
        js = ('http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js',
              )


#   js to hide choices inline

class SurveyAdmin(nested_admin.NestedModelAdmin):
    list_display = ['sid']
    
    inlines = [QuestionTabularInline]




class QuestionAdmin(nested_admin.NestedModelAdmin):
    list_display = ['question_text', 'is_multiple_choice']
    search_fields = ['question_text']
    exclude = ('sid',)
    inlines = [ChoiceTabularInline]


# admin.site.register(Question, QuestionAdmin)


class ChoiceAdmin(nested_admin.NestedModelAdmin):
    list_display = ['choice_text', 'qid']
    list_filter = ['qid']
    search_fields = ['choice_text']





class ResponseAdmin(ImportExportModelAdmin):
    list_display = ['qid', 'response_text', 'userID', 'timestamp']
    list_per_page = 25
    list_filter = ['qid',]

    def get_export_formats(self):
            """
            Returns available export formats.
            """
            formats = (
                  base_formats.CSV,
                  base_formats.XLS,
            )
            return [f for f in formats if f().can_export()]

    class Media:
        js = ('http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js',
              '/staticfiles/admin/js/chartadmin.js',
              )


#   js to add chart link


admin.site.register(Response, ResponseAdmin)
admin.site.register(Survey, SurveyAdmin)
def admin(request):
    return render(request, 'admin/base.html', {})


