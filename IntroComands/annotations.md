# Limites

Se o sistema operacional ficar sobrecarregado, ele vai acabar eliminando alguns processos que julgar não essenciais ao funcionamento da máquina e containers são alguns destes processos. No entanto, apesar de não serem essenciais ao funcionamento do computador, alguns dos seus containers podem ser essenciais ao funcionamento da sua aplicação. Logo, é importante importante limitar o uso dos recursos disponíveis e evitar risco de sobrecarga.

## Limitando Memória
* Parâmetro:
>--memory

* Exemplo de uso: 
>docker run -d --memory 10m busybox sleep 3600

* Para checar a memória disponível:
>free -m

## Limitando CPU
* Parâmetro:
>--cpus

* Exemplo de uso:
>--cpus".5"

>docker run --cpus=".5" -d --rm progrium/stress -c 8 -t 30s

* Para checar CPU disponível:
>top
