#!/bin/bash

rm -rf cne-sfia2-brief
git clone https://gitlab.com/qacdevops/cne-sfia2-brief
cd cne-sfia2-brief 
pip install -r requirements.txt
python3 app.py
# sudo docker-compose pull && sudo -E DB_PASSWORD=${DB_PASSWORD} docker-compose up -d