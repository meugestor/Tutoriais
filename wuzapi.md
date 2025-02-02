# API WHATSAPP WUZAPI
Manual de instalação !

## RECOMENDAÇÃO DE CONFIGURAÇÃO
> UBUNTU 20.04
> 6GB RAM

## Recomendação !!!!
CasaOS e Nginx Proxy Manager

> BASTA COPIAR E COLAR CADA UM DOS COMANDOS QUE SUA API SERÁ INSTALADA !

> Instale as Dependências
```bash
sudo apt update && apt upgrade && apt install git && apt install nginx && sudo apt-get install curl && sudo apt-get install gcc && sudo apt-get install sqlite3
```

> Instale o Golang

```bash
wget https://go.dev/dl/go1.23.5.linux-amd64.tar.gz
```

```bash
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.5.linux-amd64.tar.gz
```

```bash
export PATH=$PATH:/usr/local/go/bin
```
> Verifique se o Golang GO foi instalado

```bash
 go version
```

> Faça o Export Necessário 
```
export GOROOT=/usr/local/go
export GOPATH=$HOME/opt/wuzapi
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
```

> Ative o CGO
```
go env -w CGO_ENABLED=1
```

> Clone o Repositório
```
git clone https://github.com/asternic/wuzapi.git
```
```
cd wuzapi
```
```
go build .
```
```
./wuzapi -logtype json
```
> PARE A API [CTRL+C]

> Insira suas credenciais

```bash
sqlite3 dbdata/users.db "insert into users ('name','token') values ('John','1234ABCD')" 
```

> OU CRIE UM PERSONALIZADO [RECOMENDADO]
> Insira suas credenciais (<a href="https://www.md5hashgenerator.com" target="_blank"> Gerador MD5 </a>)
```bash
sqlite3 dbdata/users.db "insert into users ('name','token') values ('SUA EMPRESA','YOUR_TOKEN_USER_STRING')" 
```
> Inicie a API

```
./wuzapi -logtype json
```





