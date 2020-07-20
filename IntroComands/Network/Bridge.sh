#Git do projeto
https://github.com/mark-church/docker-pets

# Criamos a rede bridge
$ docker network create -d bridge petsBridge
#Criamos o backend
$ docker run -d --net petsBridge --name db consul
#Criamos o frontend
$ docker run -it --env "DB=db" --net petsBridge --name web -p 8000:5000 chrch/docker-pets:1.0