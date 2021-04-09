#!/bin/bash

#ssh into machine
ssh -i ~/.ssh/id_rsa ubuntu@52.30.124.179 << EOF 

git clone https://github.com/zonaira-hussain/Practical-Project.git
git checkout development
cd Practical-Project
cd backend/ && pip3 install -r requirements.txt
cd ~/
cd frontend/ && pip3 install -r requirements.txt
cd ~/
#install mysql
sudo apt update -y && sudo apt install mysql-client-core-5.7 -y

#set variables
export TEST_DATABASE_URI=mysql+pymysql://root:password@testdb.caumzfitbrs7.eu-west-1.rds.amazonaws.com:3306/testdb
export SECRET_KEY=something

#connect to test rds and prepopulate db
mysql -h testdb.caumzfitbrs7.eu-west-1.rds.amazonaws.com -P 3306 -u root -ppassword < Create.sql

# run tests
python3 -m pytest Practical-Project/backend/tests/
python3 -m pytest Practical-Project/frontend/tests/
python3 -m pytest Practical-Project/backend/tests/ --cov application
python3 -m pytest Practical-Project/frontend/tests/ --cov application

EOF