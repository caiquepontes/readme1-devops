FROM nginx

LABEL version="1.0.0" description="desafio DevOps vídeos" maintainer="Caique Pontes<caique.pontes22@gmail.com>"

ADD desafio.tar /usr/share/nginx/html/

EXPOSE 80

