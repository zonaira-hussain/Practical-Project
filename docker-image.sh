#!/bin/bash

#ssh into machine


sudo docker build -t zonaira/backend -f docker/backend .
sudo docker build -t zonaira/frontend -f docker/frontend .
docker-compose up -d


