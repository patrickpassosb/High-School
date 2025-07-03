import os
from langchain_groq import ChatGroq
from langchain.prompts import ChatPromptTemplate

# Read API key from an environment variable
API_KEY = os.getenv("")

chat = ChatGroq(model="llama-3.3-70b-versatile")

def responder(mensagens):
    """Combine system prompt with previous messages, then call the model."""
    mensagens_modelo = [("system", "Você é um assistente amigável chamado Duino")]
    mensagens_modelo += mensagens
    template = ChatPromptTemplate.from_messages(mensagens_modelo)
    chain = template | chat
    return chain.invoke({}).content

def conversa():
    print("Bem-vindo ao DuinoBot (digite 'x' para sair)")
    mensagens = []
    while True:
        pergunta = input("Usuário: ")
        if pergunta.lower() == "x":
            print("Até mais! Obrigado por usar o DuinoBot.")
            break
        mensagens.append(("user", pergunta))
        try:
            resposta = responder(mensagens)
        except Exception as e:
            print(f"Erro ao obter resposta do modelo: {e}")
            continue
        mensagens.append(("assistant", resposta))
        print(f"Duino: {resposta}")
        print("-" * 40)

if __name__ == "__main__":
    conversa()
