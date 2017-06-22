from django.shortcuts import render

from django.http import HttpResponse

def test(request, *args, **kwargs):
    return HttpResponse('OK')

def not_found(request):
    return HttpResponse(status=404)
