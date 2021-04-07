#!/bin/bash

#ssh into machine
ssh -i ~/.ssh/id_rsa ubuntu@<ip-address-of-testVM>
# remove if already exists
rm -rf cne-sfia2-brief
# clone app repo
git clone https://gitlab.com/qacdevops/cne-sfia2-brief

#install mysql
sudo apt update -y && sudo apt install mysql-client-core-5.7 -y

#connect to test rds and prepopulate db
mysql -h (your RDS endpoint) -P 3306 -u admin -p < Create.sql

# run tests
cd cne-sfia2-brief && pytest && pytest --cov application