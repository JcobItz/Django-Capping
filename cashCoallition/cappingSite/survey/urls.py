from django.urls import path
from . import views

urlpatterns = [
    path('<int:question_num>/', views.index, name='index'),
    path('', views.index, name='index'),
]
