#!/usr/bin/env bash

sudo /etc/init.d/mysql restart
mysql -uroot -e "create database myproject;"
mysql -uroot -e "CREATE USER 'lsapurina@localhost' IDENTIFIED BY 'password';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'lsapurina@localhost';"
mysql -uroot -e "FLUSH PRIVILEGES;"