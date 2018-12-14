from django.urls import path
from . import views
#urls specific to survey app
urlpatterns = [
    path('<int:question_num>/', views.index, name='index'),
    path('<int:survey_id>/<int:question_num>/', views.index, name='index'),
    path('', views.index, name='index'),
    path('submit/', views.submit, name='submit'),
    path('admin/charts/<int:q>/', views.charttest, name='charttest'),
    path('ajax/update_session/', views.update_session, name='update_session'),
    
]
