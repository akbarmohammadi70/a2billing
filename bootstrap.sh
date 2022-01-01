#!/bin/bash
mkdir ./a2billing 
#clone a2billing project
git clone https://github.com/Star2Billing/a2billing.git ./a2billing
#restore Database Mysql
docker exec -i mysql cat /database/a2billing-createdb-user.sql | /usr/bin/mysql -u a2billinguser --password=a2billing mya2billing


#creating database structure

