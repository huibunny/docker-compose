#!/bin/bash
# ![docker compose orphan containers warning](https://stackoverflow.com/questions/50947938/docker-compose-orphan-containers-warning)
# -p specify project name.It separates each docker-compose file.
docker-compose -p consul   -f docker-compose-consul-cluster.yml   up -d
docker-compose -p postgres -f docker-compose-postgres.yml         up -d
docker-compose -p mysql    -f docker-compose-mysql.yml            up -d
docker-compose -p redis    -f docker-compose-redis.yml            up -d
docker-compose -p rabbitmq -f docker-compose-rabbitmq.yml         up -d
docker-compose -p nacos    -f docker-compose-nacos-m1.yml         up -d
