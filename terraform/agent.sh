#!/bin/bash

DD_API_KEY= \
DD_SITE="datadoghq.com" \
DD_APM_INSTRUMENTATION_ENABLED=host \
DD_ENV=prod \
DD_APM_INSTRUMENTATION_LIBRARIES=java:1,python:2,js:5,dotnet:3 \
bash -c "$(curl -L https://install.datadoghq.com/scripts/install_script_agent7.sh)" > install.txt

# Iniciar o Datadog Agent
echo "Iniciando o Datadog Agent..."
sudo systemctl start datadog-agent

# Atualizar pacotes do sistema
echo "Atualizando pacotes do sistema..."
yum update -y

# Instalar o Nginx
echo "Instalando o Nginx..."
sudo yum install nginx -y

# Iniciar e habilitar o Nginx
echo "Iniciando o Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Instalação e configuração concluídas com sucesso!"

# (Opcional) Se estiver usando GCP, defina o site do Datadog:
# DD_SITE="us5.datadoghq.com"

