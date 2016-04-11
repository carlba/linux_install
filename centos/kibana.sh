#/bin/bash

yum -y install java-1.7.0-openjdk

rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

tee /etc/yum.repos.d/elasticsearch.repo <<EOF > /dev/null
[kibana-4.4]
name=Kibana repository for 4.4.x packages
baseurl=http://packages.elastic.co/kibana/4.4/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

yum install -y kibana

chkconfig --add kibana

service kibana start
