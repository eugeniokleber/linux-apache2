#!/bin/bash

echo "Criando diretórios."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos."

groupadd GRP_adm
groupadd GRP_ven
groupadd GRP_sec

echo "Criando contas de usuários."

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 12345senha) -G GRP_adm
useradd antonio -m -s /bin/bash -p $(openssl passwd -crypt 12345senha) -G GRP_adm

useradd claudio -m -s /bin/bash -p $(openssl passwd -crypt 12345senha) -G GRP_ven
useradd ana -m -s /bin/bash -p $(openssl passwd -crypt 12345senha) -G GRP_ven

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 12345senha) -G GRP_sec
useradd luiza -m -s /bin/bash -p $(openssl passwd -crypt 12345senha) -G GRP_sec

echo "Colocando permissões nos diretórios."

chown root:GRP_adm /adm
chown root:GRP_ven /ven
chown root:GRP_sec /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script encerrado."
