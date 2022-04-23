# readme1-devops
Desafio do Readme1 para DevOps

1- Crie uma estrutura que rode um processo nginx, servindo o arquivo desafio.tar.
Desejável que o processo esteja rodando em um container docker.

2- Crie um script que consuma o arquivo desafio.tar da estrutura criada no item 1.

3- Com o "desafio.tar" já baixado, crie um script que imprima a string "ABC".
Como descrito abaixo, cada arquivo possui duas linhas, sendo a segunda uma das letras [A,B,C].
Não é preciso estar ordenado.

#################################################################################################

1. Criei uma imagem Docker
   Comando: docker build -t servindo-arquivo-tar-image2 .


2. rodei o container servindo o nginx
   Comando: docker run -d -p 80:80 --name nginx-desafio1 servindo-arquivo-tar-image2


3. Alterei o arquivo de configuração do nginx dentro do container para apresentar o arquivo.tar.

Entrando no container: docker exec -it e6ca0534a1d0 /bin/bash
Diretorio conf nginx: /etc/nginx/conf.d/default.conf

4. Dei um stop e um start no container para pegar a nova configuração do nginx

comando: docker stop nginx-desafio1
comando; docker start nginx-desafio1


5. Entrar no localhost no meu navegador e baixar os arquivos desafio.tar.


Criar um script que imprima a string dos arquivos baixados.

 imprimir.sh
