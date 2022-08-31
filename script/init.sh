#!/bin/sh
/usr/local/openresty/bin/openresty
juicefs format --storage minio --bucket http://172.16.12.11:9000/hello --access-key minioadmin --secret-key minioadmin redis://:123456@172.16.12.11:6379/1 hello
juicefs mount  redis://:123456@172.16.12.11/1 /opt/fs/upload
#juicefs mount -d redis://:123456@172.16.12.11/1 /opt/fs/upload

