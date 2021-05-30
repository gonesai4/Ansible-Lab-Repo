#!/bin/bash 
cd /opt/server
sudo chown -R centos:centos webapp
cd webapp
mvn clean package
cd target
scp webapp.war centos@172.31.29.84:/opt/apache-tomcat-8.5.42/webapps

