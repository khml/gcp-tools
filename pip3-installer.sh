#!/bin/bash -x

wget https://bootstrap.pypa.io/get-pip.py 
python3 get-pip.py

echo "delete unused installer file : get-pip.py"
rm -i get-pip.py

