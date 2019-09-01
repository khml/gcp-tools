#!/bin/bash -x

sudo apt-get install python3-distutils

wget https://bootstrap.pypa.io/get-pip.py 
python3 get-pip.py

echo "delete unused installer file : get-pip.py"
rm -i get-pip.py

