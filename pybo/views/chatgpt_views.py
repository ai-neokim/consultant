from django.shortcuts import render # type: ignore
from pybo.chatgpt.chatgpt import chatbot

#### 추가 코딩

from pybo.forms import QuestionForm
from pybo.models import Question

from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, get_object_or_404, redirect
from django.utils import timezone


def chat(request):
    if request.method == 'POST':
        user_input = request.POST['user_input']
        response = chatbot.ask(user_input)
        return render(request, 'chat.html', {'user_input': user_input, 'response': response})
    else:
        return render(request, 'chat.html')

# @login_required(login_url='common:login')
# def question_create(request):
#     if request.method == 'POST':
#         form = QuestionForm(request.POST)
#         if form.is_valid():
#             question = form.save(commit=False)
#             question.author = request.user  # author 속성에 로그인 계정 저장
#             question.create_date = timezone.now()
#             question.save()
#             return redirect('pybo:index')
#     else:
#         form = QuestionForm()
#     context = {'form': form}
#     return render(request, 'pybo/question_form.html', context)