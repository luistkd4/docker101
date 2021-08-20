# docker101 🐋
Repositório criado para auxiliar no aprendizado do curso de "Introdução à Orquestração de Containers com Docker" disponível na plataforma [Digital Innovation One](https://digitalinnovation.one/).

## Resumo do projeto:

Vamos criar uma aplicação em Node que estará conectada ao MongoDB.      
Toda a instrução para a criação das aplicações estará definida no dockerfile e o docker compose criará a rede default para a comunicação dos dois containers. 

![](https://github.com/michelle-lira/docker101/blob/master/images/Captura%20de%20tela%20de%202021-08-20%2015-18-36.png)

## Requisitos:

**Docker**       
https://docs.docker.com/get-docker/

**Docker Compose**

1. Instalar docker-compose:       
https://docs.docker.com/compose/install/

2. Subir o ambiente:
>docker-compose up -d

3. Buildar novamente:
>docker-compose up --build -d


  * Referência para criar arquivo compose:
  https://docs.docker.com/compose/compose-file/


**Postman (para inserir novos usuários)**       
https://www.postman.com/downloads/    


**Outra forma de adicionar usuários é utilizando o curl, exemplo:**         

>curl -X POST \     
>  http://ip-aplicacao-porta/create \     
>  -H 'cache-control: no-cache' \        
>  -H 'content-type: application/json' \     
>  -H 'postman-token: 795b8ccd-0390-d84b-c473-a1c74eb043ac' \      
>  -d '{      
>  "name": "Bob Esponja"      
>}'      

---

**Qualquer dúvida, critica ou sugestão referente as aulas ou curso podem também serem sanadas no grupo do [telegram](https://t.me/joinchat/GzbydxdJZF0ZV-PCxcQdSQ).**

**Sintam-se a vontade em melhorar o conteúdo aqui criado!**
