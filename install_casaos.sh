#!/bin/bash
##SCRIPT DE INSTALAÇÃO CASAOS##
# ----------------------------- Script ----------------------------- #
##COMENTÁTIOS DEVEM FICAR ENTRE HASTAGS##
echo "Este Script foi desenvolvido por Wesley Barbosa "
# ----------------------------- Script ----------------------------- #
echo "Atualizando Sistema Operacional"
sudo apt update && sudo apt upgrade -y; sudo apt update;
sudo apt install git; sudo apt install curl;
apt --fix-broken install; 
# ----------------------------- Script ----------------------------- #


echo "Agora vamos instalar o CasaOS"

curl -fsSL https://get.casaos.io | sudo bash

echo "Agora vamos Atualizar o CasaOS"

wget -qO- https://get.casaos.io/update | sudo bash
## ----------------------------- EXECUÇÃO ----------------------------- ##


## Finalização, atualização e limpeza##
echo "Finalização, atualização total e limpeza"
sudo apt update && sudo apt dist-upgrade -y
echo "CasaOS Instalado com Sucesso!"
echo "Sctipt feito por Wesley Barbosa"
