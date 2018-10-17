#!/bin/bash

# create an overlay network if not already exists
docker network create --driver overlay --attachable poc-net

cd ../stacks/
docker stack deploy -c zookeeper.yml zookeeper
docker stack deploy -c kafka.yml kafka
docker stack deploy -c elastic.yml elastic