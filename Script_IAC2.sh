#!/bin/bash

@echo "Atualizando o sistema"
apt-get update apt-get upgrade -y
@echo "Instalando o apache"
apt-get install apache2 -y
@echo "Instalando o Unzip"
apt-get unzip -y
cd /tmp
@echo "Baixando as dependencias"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
