#!/bin/bash
#3.进入apt-get 配置目录
cd /etc/apt
#4.执行备份命令 --避免修改失败无法使用
cp sources.list sources.list.bak

#5.同时执行echo下的4行命令，修改成国内镜像源
echo "">sources.list
echo "deb http://ftp2.cn.debian.org/debian/ buster main">>sources.list
echo "deb http://ftp2.cn.debian.org/debian/debian-security buster/updates main">>sources.list
echo "deb http://ftp2.cn.debian.org/debian/debian buster-updates main">>sources.list

apt update
apt install -y --force-yes vim telnet
