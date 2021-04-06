#!/bin/bash

ssh -i ~/.ssh/id_rsa ubuntu@<ip-address-of-testVM>
rm -rf cne-sfia2-brief
git clone https://gitlab.com/qacdevops/cne-sfia2-brief
cd cne-sfia2-brief && pytest && pytest --cov application