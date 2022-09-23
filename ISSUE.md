# issue

## panic: invalid freelist page: 48, page type is leaf

9月 23 11:12:16 dog containerd[4157]: panic: invalid freelist page: 48, page type is leaf
9月 23 11:12:16 dog containerd[4157]: goroutine 33 [running]:
9月 23 11:12:16 dog containerd[4157]: go.etcd.io/bbolt.(*freelist).read(0x555bbff31daf, 0x7f3210a88000)
9月 23 11:12:16 dog containerd[4157]: /root/rpmbuild/BUILD/vendor/go.etcd.io/bbolt/freelist.go:266 +0x234
9月 23 11:12:16 dog containerd[4157]: go.etcd.io/bbolt.(*DB).loadFreelist.func1()
9月 23 11:12:16 dog containerd[4157]: /root/rpmbuild/BUILD/vendor/go.etcd.io/bbolt/db.go:323 +0xae
9月 23 11:12:16 dog containerd[4157]: sync.(*Once).doSlow(0xc0002b0408, 0x10)
9月 23 11:12:16 dog containerd[4157]: /usr/local/go/src/sync/once.go:68 +0xd2
9月 23 11:12:16 dog containerd[4157]: sync.(*Once).Do(...)
9月 23 11:12:16 dog containerd[4157]: /usr/local/go/src/sync/once.go:59
9月 23 11:12:16 dog containerd[4157]: go.etcd.io/bbolt.(*DB).loadFreelist(0xc0002b0240)
9月 23 11:12:16 dog containerd[4157]: /root/rpmbuild/BUILD/vendor/go.etcd.io/bbolt/db.go:316 +0x47
9月 23 11:12:16 dog containerd[4157]: go.etcd.io/bbolt.Open({0xc00027bc80, 0x3a}, 0xbff312ad, 0xc0004ace60)
9月 23 11:12:16 dog containerd[4157]: /root/rpmbuild/BUILD/vendor/go.etcd.io/bbolt/db.go:293 +0x46b
9月 23 11:12:16 dog containerd[4157]: github.com/containerd/containerd/services/server.LoadPlugins.func2(0xc000286400)
9月 23 11:12:16 dog containerd[4157]: /root/rpmbuild/BUILD/services/server/server.go:466 +0x973
9月 23 11:12:16 dog containerd[4157]: github.com/containerd/containerd/plugin.(*Registration).Init(0xc0002b2e40, 0xc000286400)
9月 23 11:12:16 dog containerd[4157]: /root/rpmbuild/BUILD/plugin/plugin.go:113 +0x2e
9月 23 11:12:16 dog containerd[4157]: github.com/containerd/containerd/services/server.New({0x555bc07b3758, 0xc000437000}, 0xc0001c61c0)
9月 23 11:12:16 dog containerd[4157]: /root/rpmbuild/BUILD/services/server/server.go:243 +0x13ab
9月 23 11:12:16 dog containerd[4157]: github.com/containerd/containerd/cmd/containerd/command.App.func1.1()
9月 23 11:12:16 dog containerd[4157]: /root/rpmbuild/BUILD/cmd/containerd/command/main.go:195 +0x87
9月 23 11:12:16 dog containerd[4157]: created by github.com/containerd/containerd/cmd/containerd/command.App.func1
9月 23 11:12:16 dog containerd[4157]: /root/rpmbuild/BUILD/cmd/containerd/command/main.go:192 +0x965
9月 23 11:12:16 dog systemd[1]: containerd.service: main process exited, code=exited, status=2/INVALIDARGUMENT

```bash

$ sudo rm -rf /var/lib/docker
$ sudo rm -rf /var/lib/containerd
$ sudo systemctl start docker
$ sudo systemctl status docker

```

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

