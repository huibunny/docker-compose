#!/bin/bash
# ![docker compose orphan containers warning](https://stackoverflow.com/questions/50947938/docker-compose-orphan-containers-warning)
# -p specify project name.It separates each docker-compose file.
docker-compose -p consul   -f docker-compose-consul-cluster.yml    down
docker-compose -p postgres -f docker-compose-postgres.yml          down
#docker-compose -p mysql    -f docker-compose-mysql.yml             down
docker-compose -p redis    -f docker-compose-redis.yml             down
docker-compose -p rabbitmq -f docker-compose-rabbitmq.yml          down
docker-compose -p nacos    -f docker-compose-nacos-m1.yml          down
docker-compose -p minio    -f docker-compose-minio.yml             down
