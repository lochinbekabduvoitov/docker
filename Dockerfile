FROM debian:buster-slim

RUN apt-get update\
    && apt-get install -y nginx

COPY ./index.php /var/www/html

CMD [ "nginx","-g","daemon off" ]