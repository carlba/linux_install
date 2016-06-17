#/bin/bash

RELEASEVER=$(rpm -q --qf "%{VERSION}" $(rpm -q --whatprovides redhat-release))
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-$RELEASEVER.rpm

