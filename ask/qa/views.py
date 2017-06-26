from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from django.views.decorators.http import require_GET

def test(request, *args, **kwargs):
    return HttpResponse('<html>It is OK</html>', 'text/html')