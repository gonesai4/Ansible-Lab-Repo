#!/bin/bash 
cd /opt
sudo chown -R centos:centos script 
cd script/webapp
export PATH=/opt/maven/apache-maven-3.8.1/bin:$PATH
mvn clean package
cd target
sudo scp webapp.war centos@172.31.29.84:/tmp
