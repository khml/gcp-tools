#!/bin/bash -x

curl -s -L https://nvidia.github.io/nvidia-container-runtime/gpgkey | apt-key add -

distribution=$(. /etc/os-release;echo "${ID}${VERSION_ID}")

curl -s -L "https://nvidia.github.io/nvidia-container-runtime/${distribution}/nvidia-container-runtime.list" |tee /etc/apt/sources.list.d/nvidia-container-runtime.list

apt-get update

apt-get install -y nvidia-container-runtime

# restart docker
systemctl restart docker.service 

# test nvidia runtime is installed or not
docker run -it --rm --gpus all ubuntu nvidia-smi

