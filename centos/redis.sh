#/bin/bash

rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
yum --enablerepo=remi,remi-test install redis

chkconfig redis on

service redis start
