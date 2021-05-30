#!/bin/bash
cd /opt/script/webapp
sudo chown -R centos:centos target
cd target
scp webapp.war centos@172.31.29.84:/opt/
