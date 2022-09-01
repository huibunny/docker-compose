#!/bin/bash
# ![docker compose orphan containers warning](https://stackoverflow.com/questions/50947938/docker-compose-orphan-containers-warning)
# -p specify project name.It separates each docker-compose file.
#docker-compose -p consul       -f docker-compose-consul-cluster.yml   up -d
#docker-compose -p postgres     -f docker-compose-postgres.yml         up -d
# mysql8
# docker-compose -p mysql        -f docker-compose-mysql.yml            up -d
# mysql5
#docker-compose -p mysql57      -f docker-compose-mysql5.7.yml         up -d
docker-compose -p redis        -f docker-compose-redis.yml            up -d
#docker-compose -p rabbitmq     -f docker-compose-rabbitmq.yml         up -d
#docker-compose -p nacos        -f docker-compose-nacos-m1.yml         up -d
docker-compose -p minio        -f docker-compose-minio.yml            up -d
#docker-compose -p jenkins      -f docker-compose-jenkins.yml          up -d
#docker-compose -p activemq     -f docker-compose-activemq.yml         up -d
#docker-compose -p dubbo        -f docker-compose-dubbo.yml            up -d
#docker-compose -p nginx        -f docker-compose-nginx.yml            up -d
#docker-compose -p fs           -f docker-compose-fs.yml               up -d
