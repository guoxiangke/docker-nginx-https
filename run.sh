#! /bin/bash
####0.set ubuntu code
# export LC_ALL=C
####1.install docker
# curl -sSL https://get.daocloud.io/docker | sh
####2.install docker composer
# curl -L https://get.daocloud.io/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose

docker-compose -p docker -f ./docker-compose.yml up -d  --build --remove-orphans --force-recreate
