#!/bin/bash

wp core download --allow-root --path="/var/www/html"
sed -i 's/^listen = .*/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php
# chown -R www-data:www-data /var/www/html
# chmod -R 755 /var/www/html
wp config create --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --dbhost=mariadb --allow-root --path="/var/www/html"
wp core install --url=${DOMAIN_NAME} --title="inception" --admin_name=${WP_ADMIN} --admin_password=${WP_PASS} --admin_email=${WP_MAIL} --allow-root --path="/var/www/html"
# sed -i 's/^listen = .*/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf

php-fpm7.3  -F
