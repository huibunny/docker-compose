FROM ubuntu:20.04

# juicefs

RUN apt update && apt install -y curl fuse && \
    apt-get autoremove && \
    apt-get clean && \
    rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

RUN set -x && \
    mkdir /juicefs && \
    cd /juicefs && \
    JFS_LATEST_TAG=$(curl -s https://api.github.com/repos/juicedata/juicefs/releases/latest | grep 'tag_name' | cut -d '"' -f 4 | tr -d 'v') && \
    curl -s -L "https://github.com/juicedata/juicefs/releases/download/v${JFS_LATEST_TAG}/juicefs-${JFS_LATEST_TAG}-linux-amd64.tar.gz" \
    | tar -zx && \
    install juicefs /usr/bin && \
    cd .. && \
    rm -rf /juicefs
#    eval juicefs format --storage minio --bucket 'http://172.16.12.11:9000/hello' --access-key minioadmin --secret-key minioadmin 'redis://:123456@172.16.12.11:6379/1 hello' && \
#    eval juicefs mount 'redis://:123456@172.16.12.11/1' /opt/fs/upload && \
#    ls /opt/fs/upload

# end juicefs



