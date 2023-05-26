#!/bin/bash

service mysql start
 mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
 mysql -u root -e "CREATE  USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
 mysql -u root  -e"GRANT ALL PRIVILEGES ON  *.* TO '$DB_USER'@'%';"
 mysql -u root  FLUSH PRIVILEGES;
service mysql stop

