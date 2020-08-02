#Cria um volume para armazenar aquivos temporários, evitando armazenar dados na camada de escrita
 docker run -d --name tmptest --mount type=tmpfs,destination=/cache,tmpfs-size=1000000 busybox sleep 3600

 #Comando dd para criar o arquivo de 1mb
 dd if=/dev/zero of=output.file bs=1024 count=1024