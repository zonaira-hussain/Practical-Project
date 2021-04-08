#!/bin/bash

#ssh into machine


sudo docker build -t zonaira/backend -f Practical-Project/docker/backend .
sudo docker build -t zonaira/frontend -f Practical-Project/docker/frontend .
docker-compose up -d


