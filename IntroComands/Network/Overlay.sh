
#TCP port 2377 for cluster management communications
#TCP and UDP port 7946 for communication among nodes
#UDP port 4789 for overlay network traffic

#Escolha um servidor para ser o principal
#Iniciando o swarm
docker swarm init --advertise-addr 192.168.0.28

#No servidor secundário
#Ingresse o servidos ao cluster swarm
docker swarm join --token SWMTKN-1-2xs8wa75la9ugfaiby0bjtpj71uqi48idxlykvjyft6g45lypo-30uglrk1mhg1yplvptarhp7cv 192.168.0.28:2377

#Listamos os nodes para verificar se estão funcionais
docker node ls

#Criamos a rede overlay
docker network create -d overlay petsOverlay

#Criamos nosso backend
docker service create --network petsOverlay --name db consul

#Criamos nosso frontend
docker service create --network petsOverlay -p 8000:5000 -e 'DB=db' --name web chrch/docker-pets:1.0

#listamos nossos serviços
docker service ls

#Escalar a aplicação
docker service scale web=3

