#!/bin/bash

service mysql start
echo bind-address= 0.0.0.0 >> /etc/mysql/my.cnf
 mysql -u root -p -e "CREATE USER '${ROOT}'@'localhost' IDENTIFIED BY '${ROOT_PASS}'";
 mysql -u root  -p -e "CREATE  USER '${USER}'@'localhost' IDENTIFIED BY '${USER_PASS}'";
 mysql -u root  -p  -e"GRANT ALL PRIVILEGES ON *.* TO '${USER}'@'localhost'";
 mysql -u root  -p -e "GRANT SELECT ,INSERT ,UPDATE ON *.* TO '${ROOT}'@'localhost'";
 mysql -u root -p FLUSH PRIVILEGES;
service mysql stop
