#!/bin/sh

VERSION="1.12.1,"
InstalledVersion=`docker -v | awk '{ print $3 }'`

if [ "$InstalledVersion" != "$VERSION" ]
then
   curl -sSL https://mirror.azure.cn/repo/install-docker-engine.sh | sh -
else
   echo "Docker 1.12.1 already installed"
fi

curl -L http://mirror.azure.cn/docker-toolbox/linux/compose/1.8.1/docker-compose-Linux-x86_64 > /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose
service docker start