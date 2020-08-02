#bind irá mapear uma pasta do seu host para o container

#vamos criar uma pasta no host e mapea-la para o container:
mkdir /html

#vamos mapear essa pasta criada:
docker run -d --name container-volume -p 80:80 -v /html:/usr/share/nginx/html nginx:latest

