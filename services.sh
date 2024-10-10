#!/bin/bash
set -e

if [ $(id -u) -ne 0 ]; then
    echo "$0 needs to be run with sudo privileges!"
    exit 1
fi

# A list of dependencies
services=("mariadb" "docker")
for s in ${services[@]}; do
    if systemctl status $s >/dev/null 2>&1; then
	echo "Starting $s"
	systemctl start mariadb
    else
	echo "$s is started!"
    fi
done
