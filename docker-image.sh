#!/bin/bash

#ssh into machine
ssh -i ~/.ssh/id_rsa ubuntu@52.30.124.179 << EOF
#delete directory if exists and clone my repo
rm -rf Practical-Project
git clone https://github.com/zonaira-hussain/Practical-Project
# create images
docker build -t zonaira/backend -f Practical-Project/docker/backend
docker build -t zonaira/frontend -f Practical-Project/docker/frontend
docker-compose up -d

EOF