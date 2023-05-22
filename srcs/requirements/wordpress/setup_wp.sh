#!/bin/bash

cd /var/www/html/wordpress/
wp core download --allow-root

chown www-data:www-data /var/www/html/wordpress/

wp config create --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --allow-root
wp core install --url=${DOMAIN_NAME} --title="inception" --admin_name=${WP_ADMIN} --admin_password=${WP_PASS} --admin-email=${WP_MAIL} --allow-root
wp core config --dbhost=mariadb --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --allow-root
sed -i 's/^listen = .*/listen = wordpress:9000/' /etc/php/7.3/fpm/pool.d/www.conf

# chmod +x wp-config.php
