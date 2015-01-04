#!/bin/bash

source ../common/lib.sh

cache_managment=$(cat <<END
# Improve cache management
vm.vfs_cache_pressure=50
END
)

echo "Change cache managment level to 45"

append_if_not_exist "$cache_managment" "/etc/sysctl.conf" && echo -e "Appending to /etc/sysctl.conf\n$cache_managment\n"
