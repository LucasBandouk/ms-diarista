# Use uma imagem base oficial do Python
FROM python:3.8-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo de requisitos
COPY requirements.txt ./

# Instale as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Copie todo o código-fonte para o diretório de trabalho
COPY . .

# Exponha a porta que a aplicação irá usar
EXPOSE 5000

# Defina o comando para rodar a aplicação
CMD ["python", "app.py"]
