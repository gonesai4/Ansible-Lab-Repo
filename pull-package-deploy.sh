#!/bin/bash 
cd /opt
sudo chown -R centos:centos script 
cd script/webapp
mvn clean package
