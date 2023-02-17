#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM -c "Carlos Silveira"
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM -c "Maria Jose da Silva"
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM -c "João dos Santos"
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN -c "Debora Fonseca"
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN -c " Sebastiana Pires"
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN -c "Roberto Carlos da Silva"
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC -c "Josefina de Alencar"
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC -c "Amanda Pereira Filha"
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC -c "Rogerio Abrantes Junior"

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
