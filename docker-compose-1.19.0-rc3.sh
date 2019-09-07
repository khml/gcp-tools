#!/bin/bash +x

filename="docker-compose-`uname -s`-`uname -m`"

wget "https://github.com/docker/compose/releases/download/1.19.0-rc3/${filename}"

chmod +x ${filename}

cp -i ${filename} /usr/local/bin/docker-compose

