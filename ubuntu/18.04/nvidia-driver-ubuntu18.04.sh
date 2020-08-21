#!/bin/bash -x

if ! dpkg-query -W cuda-10-0; then
  installer="cuda-repo-ubuntu1804_10.0.130-1_amd64.deb"
  curl -O "http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/${installer}"
  dpkg -i "./${installer}"
  apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
  apt-get update
  apt-get install cuda-10-0 -y
fi

# test
nvidia-smi
