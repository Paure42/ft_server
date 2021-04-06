#!/bin/bash

#Install Packages :
apt-get update
apt-get upgrade -y
apt-get install -y apt-utils
apt-get install -y nginx
apt-get install -y mariadb-server mariadb-client
apt-get install -y php-mysql php-pear php-gettext php-cgi php-curl 
apt-get install -y php-gd php-intl php-mbstring 
apt-get install -y php-soap php-xml php-xmlrpc php-zip php7.3-fpm php-cli
apt-get install -y wget
apt-get install -y libnss3-tools

#Start services :
service nginx start
service php7.3-fpm start
service mysql start

#Config PHP :
rm -rf /etc/nginx/sites-enabled/default
cp /tmp/default_index_off /etc/nginx/sites-enabled/default
rm -rf /etc/nginx/sites-available/default
ln -s /etc/nginx/sites-enabled/default /etc/nginx/sites-available

#Install and config PhpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
mkdir /var/www/html/phpmyadmin
tar xzf phpMyAdmin-4.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin
mv /tmp/config.inc.php /var/www/html/phpmyadmin/

#Install wordpress and create Database :
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "ALTER USER root@localhost IDENTIFIED VIA mysql_native_password;" | mysql -u root
echo "SET PASSWORD = PASSWORD('password');" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
cp /tmp/wordpress /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/
wget https://wordpress.org/latest.tar.gz -P /tmp
mkdir /var/www/html/wordpress
tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/wordpress
cp /tmp/wp-config.php /var/www/html/wordpress
chmod -R 755 /var/www/*
chown -R www-data:www-data /var/www/*


#Config SSL
export VER="v1.4.1"
wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/${VER}/mkcert-${VER}-linux-amd64
chmod +x mkcert
cp mkcert /usr/local/bin/
mkcert -install
mkcert localhost
mkdir /etc/nginx/ssl
mv localhost.pem /etc/nginx/ssl
mv localhost-key.pem /etc/nginx/ssl

