FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y nginx openssl vim zsh wget git

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout \
    /etc/nginx/ssl/inception.key -subj "/C=MO/ST=KH/L=KH/O=1337/OU=1337/CN=afatir.42.fr/UID=afatir"

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY tools/auto.sh /auto.sh

RUN chmod +x /auto.sh

RUN mkdir -p /var/www/wordpress

RUN chown -R www-data:www-data /var/www/wordpress

ENTRYPOINT [ "./auto.sh" ]

CMD ["nginx", "-g", "daemon off;"]