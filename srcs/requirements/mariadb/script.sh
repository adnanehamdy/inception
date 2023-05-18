#!/bin/bash

service mysql start
echo bind-address= 0.0.0.0 >> /etc/mysql/my.cnf
 mysql -u root -p -e "CREATE DATABASE ${DB_NAME}"
 mysql -u root  -p -e "CREATE  USER '${SQL_USER}'@'localhost' IDENTIFIED BY '${SQL_USER_PASS}'";
 mysql -u root  -p  -e"GRANT ALL PRIVILEGES ON ${SQL_USER_PASS}.* TO '${USER}'@'localhost'";
 mysql -u root -p FLUSH PRIVILEGES;
service mysql stop
