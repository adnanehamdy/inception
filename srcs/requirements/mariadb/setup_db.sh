#!/bin/bash

service mysql start
 mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
 mysql -u root -e "CREATE  USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
 mysql -u root  -e  "GRANT ALL PRIVILEGES ON  *.* TO '$DB_USER'@'%';"
 mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_ROOT_PASS');"
service mysql stop

