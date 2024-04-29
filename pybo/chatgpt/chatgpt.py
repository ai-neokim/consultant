import requests

class ChatGPT:
    def __init__(self, api_key):
        self.api_key = api_key
        self.base_url = "https://api.openai.com/v1/chat/completions"

    def ask(self, prompt):
        headers = {
            "Content-Type": "application/json",
            "Authorization": f"Bearer {self.api_key}"
        }
        data = {
            "model": "text-davinci-003",
            "messages": [{"role": "user", "content": prompt}]
        }

        response = requests.post(self.base_url, json=data, headers=headers)
        if response.status_code == 200:
            return response.json()["choices"][0]["message"]["content"]
        else:
            return "Sorry, there was an error processing your request."

# 여기에 ChatGPT API 키를 넣어주세요
API_KEY = ""

# ChatGPT 인스턴스 생성
chatbot = ChatGPT(API_KEY)
