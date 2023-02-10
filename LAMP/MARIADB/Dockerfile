FROM debian
LABEL mainteiner="javoland1992 - jose.gamez.andrade@gmail.com"

RUN apt-get update && apt-get install -y mariadb-server && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV admin_user=

ENV admin_password=

EXPOSE 3306

ADD ./src/sh/mariadb_config.sh .

ADD ./src/sh/startup.sh .

CMD ["./startup.sh"]