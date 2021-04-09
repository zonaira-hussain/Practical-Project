#!/bin/bash

#ssh into jenkins machine
ssh -i /home/jenkins/.ssh/id_rsa ubuntu@34.244.93.200 << EOF

git clone https://github.com/zonaira-hussain/Practical-Project
cd Practical-Project

sudo docker build backend -t zonaira/backend .
sudo docker build frontend -t zonaira/frontend

#build docker push
sudo docker push zonaira/frontend:latest
sudo docker push zonaira/backend:latest



EOF
