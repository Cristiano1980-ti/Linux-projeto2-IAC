#!/bin/bash

echo "atualizando o Servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando e copiando os arquivos da aplicacao..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
