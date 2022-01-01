#!/bin/bash

mkdir ./a2billing 
#clone a2billing project
git clone https://github.com/akbarmohammadi70/asterisk_docker.git ./a2billing
cat ./a2billing/hosts >> /etc/hosts
#restore Database Mysql
docker exec -i mysql cat /database/a2billing-createdb-user.sql | /usr/bin/mysql -u a2billinguser --password=a2billing mya2billing
#creating database structure

