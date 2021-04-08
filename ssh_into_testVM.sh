#!/bin/bash

#ssh into machine
ssh -i ~/.ssh/id_rsa ubuntu@52.30.124.179
# remove if already exists
rm -rf cne-sfia2-brief
# clone app repo
git clone https://gitlab.com/qacdevops/cne-sfia2-brief
apt-get update && apt-get install -y python3-pip
pip install -r requirements.txt
#install mysql
sudo apt update -y && sudo apt install mysql-client-core-5.7 -y

export TEST_DATABASE_URI=mysql+pymysql://root:password@testdb.caumzfitbrs7.eu-west-1.rds.amazonaws.com:3306/testdb
export SECRET_KEY=something
#connect to test rds and prepopulate db
mysql -h testdb.caumzfitbrs7.eu-west-1.rds.amazonaws.com -P 3306 -u root -ppassword < cne-sfia2-brief/database/Create.sql

#set variables

# run tests
cd cne-sfia2-brief && python3 -m pytest backend/tests/test_backend.py
cd
cd cne-sfia2-brief && python3 -m pytest frontend/tests/test_frontend.py
cd
cd cne-sfia2-brief && python3 -m pytest backend/tests/test_backend.py --cov application
cd
cd cne-sfia2-brief && python3 -m pytest frontend/tests/test_frontend.py --cov application