#!/bin/bash

echo "Atualizando servidor..."

apt update

echo "Servidor atualizado..."

echo "Instalando apache2 e unzip..."

apt install apache2 && unzip

echo "apache2 e unzip instalado..."

echo"Baixando aplicação do repositório no git no diretório /tmp... "

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio.git

echo "Extraindo arquivos da aplicação 'main.zip'..."

unzip main.zip

echo "Copiando arquivos da aplicação 'main.zip' para o diretório padrão do apache"

cd linux-site-dio-main

cp -r linux-site-dio-main/* /var/www/html/

echo "Finalizado projeto."


