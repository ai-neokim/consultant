warning: in the working copy of 'templates/base.html', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/templates/base.html b/templates/base.html[m
[1mindex b20cf29..91389f4 100644[m
[1m--- a/templates/base.html[m
[1m+++ b/templates/base.html[m
[36m@@ -9,9 +9,11 @@[m
     <link rel="stylesheet" type="text/css" href="{% static 'bootstrap.min.css' %}">[m
     <!-- pybo CSS -->[m
     <link rel="stylesheet" type="text/css" href="{% static 'style.css' %}">[m
[31m-    <title>Hello, pybo!</title>[m
[32m+[m[32m    <!--- <title>Hello, pybo!222</title> --->[m
[32m+[m[32m    <h1>파이보</h1>[m
 </head>[m
 <body>[m
[32m+[m[41m   [m
 <!-- 네비게이션바 -->[m
 {% include "navbar.html" %}[m
 <!-- 기본 템플릿 안에 삽입될 내용 Start -->[m
[1mdiff --git a/templates/pybo/base.html b/templates/pybo/base.html[m
[1mdeleted file mode 100644[m
[1mindex 062951d..0000000[m
[1m--- a/templates/pybo/base.html[m
[1m+++ /dev/null[m
[36m@@ -1,24 +0,0 @@[m
[31m-{% load static %}[m
[31m-<!doctype html>[m
[31m-<html lang="ko">[m
[31m-<head>[m
[31m-    <!-- Required meta tags -->[m
[31m-    <meta charset="utf-8">[m
[31m-    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">[m
[31m-    <!-- Bootstrap CSS -->[m
[31m-    <link rel="stylesheet" type="text/css" href="{% static 'bootstrap.min.css' %}">[m
[31m-    <!-- pybo CSS -->[m
[31m-    <link rel="stylesheet" type="text/css" href="{% static 'style.css' %}">[m
[31m-    <title>Hello, pybo!</title>[m
[31m-</head>[m
[31m-<body>[m
[31m-<!-- 네비게이션바 -->[m
[31m-{% include "navbar.html" %}[m
[31m-<!-- 기본 템플릿 안에 삽입될 내용 Start -->[m
[31m-{% block content %}[m
[31m-{% endblock %}[m
[31m-<!-- 기본 템플릿 안에 삽입될 내용 End -->[m
[31m-<!-- Bootstrap JS -->[m
[31m-<script src="{% static 'bootstrap.min.js' %}"></script>[m
[31m-</body>[m
[31m-</html>[m
\ No newline at end of file[m
