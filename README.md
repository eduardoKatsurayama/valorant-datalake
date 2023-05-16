# Valorant Data Lake
Um Data Lake que coleta dados da API da [Riot](https://developer.riotgames.com/apis) do jogo [Valorant](https://playvalorant.com/pt-br/?gad=1&gclid=Cj0KCQjwpPKiBhDvARIsACn-gzB59YTe0zeZqXlHaJFf2JeApZqhXZ8ztGKUVZ1Dld89o2r13bwUcbgaAjPoEALw_wcB&gclsrc=aw.ds)

![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge)

## Requerimentos:
<div style="display: inline_block"><br>
  <img aling="center" alt ="docker" heigth="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original-wordmark.svg" />
</div>

## Tecnologias Usadas:
<div style="display: inline_block"><br>
  <img aling="center" alt ="docker" heigth="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original-wordmark.svg" />
  <img aling="center" alt ="python" heigth="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original-wordmark.svg" />
  <img aling="center" alt="amazon-web-services" width="40" height="40" src="https://img.icons8.com/color/48/amazon-web-services.png" />
  <img aling="center" alt="spark" width="60" height="40" src="https://www.vectorlogo.zone/logos/apache_spark/apache_spark-ar21.svg" />
  <img aling="center" alt="riot games" width="90" heigth="50" src="https://img.shields.io/badge/Riot_Games-D32936?style=for-the-badge&logo=riot-games&logoColor=white" />
</div>


## Como Começar
É necessário que tenha o Docker instalado, caso não tenha basta seguir as instruções a seguir:
  * [Docker no Windows](https://learn.microsoft.com/pt-br/virtualization/windowscontainers/manage-docker/configure-docker-daemon)
  * [Docker no Linux](https://docs.docker.com/engine/install/ubuntu/)
  * [Docker no MacOs](https://docs.docker.com/desktop/install/mac-install/)

Agora que o Docker já está na sua máquina, vamos começar.

## Como começar 
Clonando o repositório 
```
git clone git@github.com:eduardoKatsurayama/valorant-datalake.git 
```

Entrando no repositório
```
cd valorant-datalake/ 
```

### Como configurar suas variáveis de ambiente

Criando .env
```
cp ./samples/.env.sample ./.env
```

Abra o .env e preencha as variáveis  
```
vim ./.env
```

### DockerFile

[Dockerfile](https://docs.docker.com/engine/reference/builder/) é um arquivo de texto simples que consiste em instruções para criar imagens do Docker.

Criando imagem Docker
```
docker build -t dev-env .
```

Agora vamos criar um container com a imagem dev-env
```
docker run -it --rm -p 8888:8888 -v /${PWD}:/volume env-dev
```

## Como Contribuir
