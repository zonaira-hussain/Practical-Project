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
mysql -h testdb.caumzfitbrs7.eu-west-1.rds.amazonaws.com -P 3306 -u root -p < cne-sfia2-brief/database/Create.sql

#set variables
export TEST_DATABASE_URI=mysql+pymysql://root:password@testdb.caumzfitbrs7.eu-west-1.rds.amazonaws.com:3306/testdb
export SECRET_KEY=something
# run tests
cd cne-sfia2-brief && pytest backend/tests/
cd cne-sfia2-brief && pytest frontend/tests/
cd cne-sfia2-brief && pytest backend/tests/ --cov application
cd cne-sfia2-brief && pytest frontend/tests/ --cov application