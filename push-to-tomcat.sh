#!/bin/bash
cd /opt/script/webapp/target
scp *.war centos@172.31.29.84:/opt/apache-tomcat-8.5.42/webapps
