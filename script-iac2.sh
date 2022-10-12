#!/bin/bash

echo "### Atualizando a lista de Pacotes ###"
echo
apt update

echo "### Atualizando o servidor ###"
echo
apt upgrade -y

echo "### Instalando o apache e o unzip ###"
echo
apt install apache2 unzip -y

echo "### Baixando e publicando o site ###"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
