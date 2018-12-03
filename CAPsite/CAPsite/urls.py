"""cappingSite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from survey import views
from django.conf.urls import url



urlpatterns = [
    path('admin/', admin.site.urls),
    path('admin/charts/<int:q>/', views.charttest, name='Reports'),
    

]

# Use include() to add paths from the survey application
from django.conf.urls import include
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import RedirectView

urlpatterns += [
    path('survey/', include('survey.urls')),
    path('about/', views.about, name='about'),
    path('submit/', views.submit, name='submit'),
]

# Add URL maps to redirect the base URL to our application
urlpatterns += [
    path('', RedirectView.as_view(url='/survey/')),
    url(r'^nested_admin/', include('nested_admin.urls')),
]

