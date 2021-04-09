#!/bin/bash

#ssh into jenkins machine
ssh -i /home/jenkins/.ssh/id_rsa ubuntu@34.244.93.200 << EOF

# git clone https://github.com/zonaira-hussain/Practical-Project
# cd Practical-Project

docker build backend -t zonaira/backend
docker build frontend -t zonaira/frontend

#build docker push
docker push zonaira/frontend:latest
docker push zonaira/backend:latest



EOF
