#--mount é mais verboso do que utilizar -v ou --volume

#Criando um disco utilizando -v
# meuPrimeiroVolume:/path/inContainer:ro
docker volume create meuPrimeiroVolume

#listar volume
docker volume list

#inspecionar o volume criado
docker volume inspect meuPrimeiroVolume

#remover o volume
docker volume rm meuPrimeiroVolume

#Criado container com volume
docker run -d --name container-volume -p 80:80 --mount source=meuPrimeiroVolume,target=/usr/share/nginx/ nginx:latest

#Inspecione o container criado
docker inspect container-volume