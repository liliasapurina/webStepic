from django.conf.urls import url
from django.contrib import admin
from qa.views import test

urlpatterns = [
    url(r'.*', test)
]