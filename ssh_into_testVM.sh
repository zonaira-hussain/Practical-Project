#!/bin/bash

#ssh into machine
ssh -i ~/.ssh/id_rsa ubuntu@52.209.160.105
# remove if already exists
rm -rf cne-sfia2-brief
# clone app repo
git clone https://gitlab.com/qacdevops/cne-sfia2-brief

#install mysql
sudo apt update -y && sudo apt install mysql-client-core-5.7 -y

#connect to test rds and prepopulate db
mysql -h project-test-db.caumzfitbrs7.eu-west-1.rds.amazonaws.com -P 3306 -u root -p < /database/Create.sql

# run tests
cd cne-sfia2-brief && pytest && pytest --cov application