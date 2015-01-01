#!/bin/bash

source ../common/lib.sh

swapiness=$(cat <<END
# Decrease swap usage to a more reasonable level
vm.swappiness=10
END
)

swappiness_level=$(cat /proc/sys/vm/swappiness)

echo "Current swapiness level is $swappiness_level"
echo "Changing swapiness level to 10"
append_if_not_exist "$cache_managment" "/etc/sysctl.conf" && echo -e "Appending to /etc/sysctl.conf\n$cache_managment\n"
