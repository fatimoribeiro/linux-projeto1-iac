#!/bin/bash

echo "Criando diretorios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários GRP_ADM..."
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

echo "Criando usuários GRP_VEN..."
useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

echo "Criando usuários do GRP_SEC..."
useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Adicionando permissionamento aos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Adicionando permisionamento aos usuários..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado."
