#!/bin/bash

# script executado a partir do Linux Ubuntu WSL2 Windows

echo Inicio do script de configuracao do servidor

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install apache2 -y
sudo apt-get install unzip -y

cd /tmp

sudo rm main.zip -v
sudo rm linux-site-dio-main -r -v
sudo rm /var/www/html/index.html -v

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sudo unzip main.zip

cd linux-site-dio-main
sudo cp -R * /var/www/html

sudo /etc/init.d/apache2 start

echo Fim do script de configuracao do servidor
