#Podemos limitar a utilização de recursos dos nossos containers

#Para limitar a utilização de cpu precisamos usar o parâmetro --cpus
#Se temos somente 1 CPU, se quisermos que ele use somente metada disso devemos criar o container da seguinte forma:
docker run -d --cpus=".5" ubuntu

#Abaixo temos um container de teste de strees onde -c é a quantidade de cores para estressar e -t o tempo do teste
docker run -d --rm progrium/stress -c 8 -t 30s

#Podemos utilizar o docker stats para monitorar em tempo real o consumo dos recursos
docker stats