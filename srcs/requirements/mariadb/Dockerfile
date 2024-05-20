FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y mariadb-server vim zsh wget git mycli

COPY ./conf/init.sh /init.sh

RUN chmod +x /init.sh

ENTRYPOINT ["./init.sh"]
