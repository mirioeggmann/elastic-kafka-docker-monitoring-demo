#!/bin/bash

docker stack rm elastic-dc1
docker stack rm elastic-dc2
docker stack rm kafka
docker stack rm zookeeper