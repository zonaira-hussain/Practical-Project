#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@34.244.93.200 << EOF 
rm -rf Practical-Project
#cloning my repo
git clone https://github.com/zonaira-hussain/Practical-Project
#cd into project directory
cd Practical-Project
sudo apt update -y && sudo apt install mysql-client-core-5.7 -y
#connect to test rds and prepopulate testdb
mysql -h testdb.caumzfitbrs7.eu-west-1.rds.amazonaws.com -P 3306 -u root -ppassword < database/Create.sql
#connect to jenkins rds and prepopulate jenkinsdb
mysql -h project-jenkins-db.caumzfitbrs7.eu-west-1.rds.amazonaws.com -P 3306 -u root -ppassword < database/Create.sql
#build the container containing frontend, backend images
docker-compose up -d --build
#run the tests in the images through docker containers
docker exec flask-app-backend bash -c "pytest tests/"
docker exec flask-app-frontend bash -c "pytest tests/"
docker exec flask-app-backend bash -c "pytest tests/ --cov application"
docker exec flask-app-frontend bash -c "pytest tests/ --cov application"
docker-compose down
EOF