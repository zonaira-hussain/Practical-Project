#!/bin/bash

echo 'launching cluster'
eksctl create cluster \
--name JenkinsCluster \
--region eu-west-1 \
--nodegroup-name ProjectNodes \
--nodes 2 \
--nodes-min 2 \
--nodes-max 3 \
--node-type t3.micro \
--with-oidc \
--ssh-access \
--ssh-public-key aws-instance-keypair \
--managed

echo 'creating namespace'
kubectl create ns project-namespace.yml

echo 'creating pod'
kubectl