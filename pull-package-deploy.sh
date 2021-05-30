#!/bin/bash 
cd /opt
sudo chown -R centos:centos script 
cd script/webapp
export PATH=/opt/maven/apache-maven-3.8.1/bin:$PATH
mvn clean package
cd target
scp webapp.war centos@172.31.29.84:/tmp
ssh centos@172.31.29.84
sudo mv /tmp/webapp.war /opt/apache-tomcat-8.5.42/webapps 
