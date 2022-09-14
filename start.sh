#!/bin/bash

chown -R www-data:www-data /var/www/html/glpi
chmod -R 775 /var/www/html/glpi

a2enmod rewrite && service apache2 restart && service apache2 stop

#Lancement du service apache au premier plan
/usr/sbin/apache2ctl -D FOREGROUND

