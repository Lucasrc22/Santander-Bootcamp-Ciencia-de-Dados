import os
import openai
import json
import pandas as pd
import requests
import ProjetoETL.extract as extract

# -----------------------------------------------------------------------------
# 🔐 Carregar a API Key de forma segura (NUNCA DEIXAR CHAVE NO CÓDIGO)
# -----------------------------------------------------------------------------
openai.api_key = os.getenv("OPENAI_API_KEY")  # configure no ambiente


# -----------------------------------------------------------------------------
# 📄 Carregando planilha
# -----------------------------------------------------------------------------
df = pd.read_csv("SDW2023.csv")
sdw2023_api_url = "https://sdw-2023-prd.up.railway.app"

user_ids = df["UserID"].tolist()
print(user_ids)


# -----------------------------------------------------------------------------
# 📡 Função para buscar usuário da API
# -----------------------------------------------------------------------------
def get_user(user_id):
    """Faz GET na API e retorna os dados completos do usuário."""
    response = extract.get(f"{sdw2023_api_url}/users/{user_id}")
    if response.status_code == 200:
        return response.json()
    return None


# Buscar usuários válidos
users = [u for uid in user_ids if (u := get_user(uid)) is not None]

print(json.dumps(users, indent=2))


# -----------------------------------------------------------------------------
# 🤖 Função que gera texto para cada usuário usando OpenAI
# -----------------------------------------------------------------------------
def generate_ai_news(user):
    """Gera mensagem personalizada com no máximo 100 caracteres."""
    
    completion = openai.ChatCompletion.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system", "content": "Você é um especialista em marketing bancário."},
            {"role": "user", "content": f"Crie uma mensagem para {user['name']} sobre investimentos (máximo de 100 caracteres)."}
        ]
    )

    response_text = completion.choices[0].message["content"].strip('"')
    return response_text


# -----------------------------------------------------------------------------
# 📰 Adiciona mensagens geradas aos usuários
# -----------------------------------------------------------------------------
for user in users:
    news = generate_ai_news(user)
    print(news)

    # Garante que a chave news existe
    if "news" not in user:
        user["news"] = []

    user["news"].append({
        "icon": "https://digitalinnovationone.github.io/santander-dev-week-2023-api/icons/credit.svg",
        "description": news
    })


# -----------------------------------------------------------------------------
# 🔄 Atualiza usuário na API
# -----------------------------------------------------------------------------
def update_user(user):
    """Faz PUT atualizando o usuário na API."""
    response = requests.put(
        f"{sdw2023_api_url}/users/{user['id']}",
        json=user
    )
    return response.status_code == 200


# -----------------------------------------------------------------------------
# 🚀 Envia atualizações
# -----------------------------------------------------------------------------
for user in users:
    success = update_user(user)
    print(f"User {user['name']} updated? {success}")
