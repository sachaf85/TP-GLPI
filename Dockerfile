FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq --no-install-recommends \ 
    php php-ldap php-imap php-apcu apache2 \
    php-xmlrpc php-cas php-mysqli php-mbstring php-curl php-gd php-simplexml php-xml php-intl php-zip php-bz2

WORKDIR /var/www/html
ADD glpi-10.0.2.tgz .
RUN chown -R www-data:www-data /var/www/html/glpi
RUN chmod -R 775 /var/www/html/glpi
ADD php.ini /etc/php/8.1/apache2/
ADD 000-default.conf /etc/apache2/sites-available/000-default.conf
#ADD config_db.php /var/www/html/glpi/config/config_db.php
COPY start.sh /opt
RUN chmod +x /opt/start.sh
CMD ["/opt/start.sh"]
