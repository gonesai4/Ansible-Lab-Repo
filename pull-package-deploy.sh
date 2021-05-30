#!/bin/bash 
cd /opt/script
sudo chown -R centos:centos webapp
cd webapp
sudo mvn clean package
cd target
scp webapp.war centos@172.31.29.84:/opt/apache-tomcat-8.5.42/webapps

