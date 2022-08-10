# issue

## consul

### panic: invalid freelist page 

docker 使用了 boltdb 存储了网络信息成 db 文件，但是这个 db 文件损坏了，导致读取字节序列化错误类型。

```bash

$ rm -vf ~/.consul/consul1/data/raft/raft.db 

```

#### reference

* [docker-ce 18.09.3 启动panic: invalid freelist page: 56, page type is leaf的解决处理](https://zhangguanzhang.github.io/2021/05/26/docker-panic-invalid-freelist-page/)


## nacos
### nacos Function not implemented

* [Apple Mac M1 docker环境下nacos无法启动](https://github.com/alibaba/nacos/issues/6340)

