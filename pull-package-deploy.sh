#!/bin/bash 
git clone https://github.com/gonesai4/Ansible-Lab-Repo.git
sudo cp -rf Ansible-Lab-Repo/* /tmp
cd /tmp
sudo chown -R centos:centos webapp
cd webapp
mvn clean package
cd target
scp webapp.war centos@172.31.29.84:/opt/webserver/webapps

