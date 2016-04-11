#/bin/bash

yum -y install java-1.7.0-openjdk

rpm --import https://packages.elasticsearch.org/GPG-KEY-elasticsearch

tee /etc/yum.repos.d/elasticsearch.repo <<EOF > /dev/null
[elasticsearch-2.x]
name=Elasticsearch repository for 2.x packages
baseurl=http://packages.elastic.co/elasticsearch/2.x/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

yum install -y elasticsearch

chkconfig --add elasticsearch

service elasticsearch start
