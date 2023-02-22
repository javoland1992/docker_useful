FROM javoland1992/debian_apache_image
LABEL mainteiner="javoland1992 - jose.gamez.andrade@gmail.com"

RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-client -y && apt-get install -y php php-common && apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 80
ADD ["index.php","/var/www/html/"]

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]