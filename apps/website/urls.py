from django.urls import path

from apps.web.views import home

urlpatterns = [
    path("", home, name="home"),
]