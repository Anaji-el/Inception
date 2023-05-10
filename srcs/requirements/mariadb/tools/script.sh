#!/bin/bash
service mysql start


echo "CREATE DATABASE IF NOT EXISTS wp;" > file.sql
echo "CREATE USER IF NOT EXISTS 'anaji'@'%' IDENTIFIED BY '123';" >> file.sql
echo "GRANT ALL PRIVILEGES  ON wp.* TO 'anaji' ;" >> file.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root123' ;" >> file.sql;
echo "FLUSH PRIVILEGES;" >> file.sql


mysql < file.sql

kill $(cat /var/run/mysqld/mysqld.pid)

/usr/sbin/mysqld