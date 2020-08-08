#Subir o ambiente
docker-compose up -d

#Buildar novamente
docker-compose up --build -d

#Adicionar usuário:
curl -X POST \
  http://ip-aplicacao-porta/create \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'postman-token: 795b8ccd-0390-d84b-c473-a1c74eb043ac' \
  -d '{
  "name": "Patrick"
}'