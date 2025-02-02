# API WHATSAPP WUZAPI
Manual de instalação !

## RECOMENDAÇÃO DE CONFIGURAÇÃO
> UBUNTU 20.04
> 6GB RAM

## INSTALE AS DEPENDÊNCIAS
```bash
sudo apt update && apt upgrade && apt install git && apt install nginx && sudo apt-get install curl && sudo apt-get install gcc && sudo apt-get install sqlite3
```

## ADICIONAIS


> NÃO DEVEM SER IGNORADOS

> Ver Banco de dados
>
> sqlite3 dbdata/users.db ".mode column" ".headers on" "SELECT * FROM users;"
