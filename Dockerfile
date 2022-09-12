FROM debian:11

run apt-get update
run apt-get upgrade
run apt-get install php
run apt-get install php-ldap php-imap php-apcu php-xmlrpc php-cas php-mysqli php-mbstring php-curl php-gd php-simplexml php-xml php-intlk php-zip php-bz2
cd /tmp/
wget https://github.com/glpi-project/glpi/releases/download/10.0.2/glpi-10.0.2.tgz
run tar xzf glpi-10.0.2.tgz -C /var/wwww/html
run rm -r glpi-10.0.2.tgz
