#!/bin/sh

yum -y update
yum -y install docker git vim net-tools
sudo service docker start
curl https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | tar -C /usr/local -xz
sed -i '/^PATH=/s/$/:\/usr\/local\/go\/bin/' /home/vagrant/.bash_profile
sed -i '/^PATH=/s/$/:\/usr\/local\/go\/bin/' ~/.bash_profile
echo "export GOPATH=/srv/gocode" >> ~/.bash_profile
echo "export GOPATH=/srv/gocode" >> /home/vagrant/.bash_profile
sudo service firewalld stop
