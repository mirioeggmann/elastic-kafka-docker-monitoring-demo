#!/bin/bash

# create an overlay network if not already exists
docker network create --driver overlay --attachable poc-net

cd ../stacks/shared
docker stack deploy -c zookeeper.yml zookeeper
docker stack deploy -c kafka.yml kafka
cd ../dc1
docker stack deploy -c elastic.yml elastic-dc1
#cd ../dc2
#docker stack deploy -c elastic.yml elastic-dc2