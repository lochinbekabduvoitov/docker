FROM debian:buster-slim

RUN apt-get update\
 && apt-get install -y nginx

COPY ./index.html /var/www/html

CMD [ "nginx","-g","daemon off" ]