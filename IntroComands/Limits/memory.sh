#Podemos limitar a utilização de recursos dos nossos containers

#Para limitar a utilização de memória precisamos usar o parâmetro -m ou --memmry
docker run -d --memory 500m ubuntu

#Abaixo temos um container de teste de strees onde -c é a quantidade de cores para estressar e -t o tempo do teste
docker run -d --rm progrium/stress --vm-bytes 128M -t 30s

#Containers também possuem memória swap, para limitar:
docker run -d --memory-swap 150m

#Podemos utilizar o docker stats para monitorar em tempo real o consumo dos recursos
docker stats

#Importante: Sempre limite a quantidade de memória em seu container, caso sua aplicação consuma muita memória...
#...o Kernel do linux irá finalizar aplicações para sobrar memória para o sistema
