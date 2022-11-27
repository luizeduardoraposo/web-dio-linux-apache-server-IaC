#!/bin/bash

echo "Atualizando o servidor Ubuntu:"
apt-get update
apt-get upgrade -y

echo "Instalando o Apache2:"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando a aplicação disponível no Github para o diretório /tmp:"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copiando os arquivos da aplicação para o diretório /var/www/html:"
cp -R * /var/www/html/
