#!/usr/bin/env bash
django-admin startproject helloworld .
echo 'from django.http import HttpResponse' > helloworld/views.py
echo 'def hello(request):' >> helloworld/views.py
echo '    return HttpResponse("Hello World!")' >> helloworld/views.py
echo "from django.urls import path" > helloworld/urls.py
echo "from . import views" >> helloworld/urls.py
echo "urlpatterns = [path('', views.hello, name='hello'),]" >> helloworld/urls.py
