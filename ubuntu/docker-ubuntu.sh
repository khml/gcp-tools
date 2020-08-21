#!/bin/bash -x 

apt-get update

apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update

apt-get install -y docker-ce docker-ce-cli containerd.io

# confirm docker is installed or not
docker run hello-world

if [ $1 != "" ]
then
  gpasswd -a $1 docker
fi


