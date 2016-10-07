#!/bin/bash

yum -y install java-1.7.0-openjdk

rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

tee /etc/yum.repos.d/logstash.repo <<EOF > /dev/null
[logstash-2.2]
name=logstash repository for 2.2 packages
baseurl=http://packages.elasticsearch.org/logstash/2.2/centos
gpgcheck=1
gpgkey=http://packages.elasticsearch.org/GPG-KEY-elasticsearch
enabled=1
EOF

yum install -y logstash

chkconfig --add logstash

service logstash start
