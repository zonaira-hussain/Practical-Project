#!/bin/bash

#ssh into jenkins machine
ssh -i ~/.ssh/id_rsa ubuntu@52.30.124.179 << EOF

#build docker images

sudo docker build backend -t zonaira/backend
sudo docker build frontend -t zonaira/frontend


EOF
