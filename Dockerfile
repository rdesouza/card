#FROM python:3.9-alpine
FROM python:3.14.0a5-alpine3.21
# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos para dentro do container
COPY requirements.txt .

# Atualize os pacotes e instale dependências necessárias
RUN pip3 install --no-cache-dir -r requirements.txt


# Exponha a porta 8080 
EXPOSE 8080

# Defina uma variável de ambiente
ENV NOME="Roger de Souza Rocha"

COPY . .

# Use o Python do ambiente virtual para iniciar a aplicação
CMD ["python3", "app.py"]
