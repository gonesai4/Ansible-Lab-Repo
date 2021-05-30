#!/bin/bash 
cd /opt/script
sudo chown -R centos:centos webapp
cd webapp
mvn clean package

