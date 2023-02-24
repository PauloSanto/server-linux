
#!/bin/bash

echo " Atualizando o servidor..."
apt get update  -y

echo "Instalando o apache2..."
apt install apache2 -y

echo "Reestart apache2..."
systemctl restart apache2
q

echo "Instalando o descompactador unzip..."
apt install unzip -y

echo "mudando o diretorio para tmp..."
cd  /tmp

echo"baixando arquivos..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "unzip..."
unzip main.zip

echo"muda diretorio.."
cd  /tmp/linux-site-dio-main

echo"copia arquivos para apache...."
cp /tmp/linux-site-dio-main/*  /var/www/html/  -r

#use o comando source para rodar este arquivo.
