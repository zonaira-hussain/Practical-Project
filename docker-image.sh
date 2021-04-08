#!/bin/bash

#ssh into machine


docker build -t zonaira/backend -f Practical-Project/docker/backend
docker build -t zonaira/frontend -f Practical-Project/docker/frontend
docker-compose up -d

