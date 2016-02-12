#/bin/bash

yum -y install java-1.7.0-openjdk

rpm --import https://packages.elasticsearch.org/GPG-KEY-elasticsearch

tee /etc/yum.repos.d/elasticsearch.repo <<EOF > /dev/null
[elasticsearch-1.5]
name=Elasticsearch repository for 1.5.x packages
baseurl=http://packages.elasticsearch.org/elasticsearch/1.5/centos
gpgcheck=1
gpgkey=http://packages.elasticsearch.org/GPG-KEY-elasticsearch
enabled=1
EOF

yum install -y elasticsearch

chkconfig --add elasticsearch

service elasticsearch start
