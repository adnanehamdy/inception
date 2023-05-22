#!/bin/bash

service mysql start
sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf
 mysql -u root -p -e "CREATE DATABASE '${DB_NAME}'"
 mysql -u root  -p -e "CREATE  USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}'";
 mysql -u root  -p  -e"GRANT ALL PRIVILEGES ON '${DB_NAME}'.* TO '${DB_USER}'@'%'";
 mysql -u root -p FLUSH PRIVILEGES;
service mysql stop
