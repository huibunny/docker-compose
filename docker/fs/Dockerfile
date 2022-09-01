FROM ubuntu:20.04

ENV TimeZone=Asia/Shanghai
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

# end juicefs

# openresty

RUN apt update && apt install -y libpcre3-dev  \
  libssl-dev  \
  perl  \
  make  \
  build-essential  \
  curl  \
  zlib1g-dev

RUN set -x && \
  mkdir /openresty && \
  cd /openresty && \
  curl -s -L "https://openresty.org/download/openresty-1.21.4.1.tar.gz" \
  | tar -zx && \
  cd openresty-1.21.4.1 && \
  ./configure \
  --with-http_gzip_static_module \
  --with-http_v2_module \
  --with-http_stub_status_module && \
  make -j4 && \
  make install

# end openresty
# Copy nginx configuration files
# See https://github.com/openresty/docker-openresty/blob/master/README.md#tips--pitfalls
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
#COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf
CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]

# Use SIGQUIT instead of default SIGTERM to cleanly drain requests
# See https://github.com/openresty/docker-openresty/blob/master/README.md#tips--pitfalls
STOPSIGNAL SIGQUIT

