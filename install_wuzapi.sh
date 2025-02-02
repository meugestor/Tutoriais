#!/bin/bash
echo "Script de Instalação Wuzapi API"
# ----------------------------- Script ----------------------------- #
##COMENTÁTIOS DEVEM FICAR ENTRE HASTAGS##
echo "Este Script foi desenvolvido por Wesley Barbosa "
# ----------------------------- Script ----------------------------- #
echo "Atualizando Sistema Operacional e Instalando Dependências"
sudo apt update && apt upgrade && apt install git && apt install nginx && sudo apt-get install curl && sudo apt-get install gcc && sudo apt-get install sqlite3;
apt --fix-broken install; 
# ----------------------------- Script ----------------------------- #
echo "Primeiro vamos instalar os programas necessários !"

echo "Instalando Golang GO"
wget https://go.dev/dl/go1.23.5.linux-amd64.tar.gz;
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.5.linux-amd64.tar.gz;
export PATH=$PATH:/usr/local/go/bin;
echo "GO Instalado"
go version;
echo "Configurando Golang"

export GOROOT=/usr/local/go;
export GOPATH=$HOME/opt/wuzapi;
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH;

echo "Ativando CGO"
go env -w CGO_ENABLED=1;

echo "Clonando Repositório"

git clone https://github.com/asternic/wuzapi.git;
cd wuzapi;
go build .
timeout 5 ./wuzapi
sqlite3 dbdata/users.db "insert into users ('name','token') values ('John','1234ABCD')" ;
timeout 5 ./wuzapi

## ----------------------------- INSTALANDO WEBMIN ----------------------------- ##
curl -o webmin-setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/webmin-setup-repos.sh
sh webmin-setup-repos.sh;

apt-get install webmin --install-recommends;


## ----------------------------- Finalização ----------------------------- ##


## Finalização, atualização e limpeza##
echo "Finalização, atualização total e limpeza"
sudo apt update && sudo apt dist-upgrade -y
echo "CasaOS Instalado com Sucesso!"
echo "Sctipt feito por Wesley Barbosa"
