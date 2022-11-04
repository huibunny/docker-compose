FROM jenkins/jenkins:lts-jdk11
# if we want to install via apt
USER root
#复制原文件备份
# https://github.com/jenkinsci/docker/blob/master/README.md

# https://stackoverflow.com/questions/51023312/docker-having-issues-installing-apt-utils
# Set for all apt-get install, must be at the very beginning of the Dockerfile.
ENV DEBIAN_FRONTEND noninteractive

RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean

#更新apt
RUN apt-get update
#https://github.com/phusion/baseimage-docker/issues/319
RUN apt-get install -y --no-install-recommends apt-utils vim ansible sshpass

#ssh key

RUN ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa -q

# https://stackoverflow.com/questions/31681144/call-ssh-copy-id-in-an-ansible-playbook-how-to-handle-password-prompt
RUN sshpass -p Zk@2022! ssh-copy-id -i /root/.ssh/id_rsa.pub -o StrictHostKeyChecking=no apple@172.16.12.11

# drop back to the regular jenkins user - good practice
USER jenkins
