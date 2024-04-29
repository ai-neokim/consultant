from django.shortcuts import render # type: ignore
from pybo.chatgpt.chatgpt import chatbot


def chat(request):
    if request.method == 'POST':
        user_input = request.POST['user_input']
        response = chatbot.ask(user_input)
        return render(request, 'chat.html', {'user_input': user_input, 'response': response})
    else:
        return render(request, 'chat.html')
