#!/bin/bash

#ssh into machine


sudo docker build -t zonaira/backend -f backend .
sudo docker build -t zonaira/frontend -f frontend .
docker-compose up -d


