#!/bin/bash -x

pip3 install pipenv

usage="`pipenv -h`"
echo ${usage}

