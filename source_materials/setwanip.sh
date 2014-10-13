#!/bin/bash
newip=$(/sbin/ifconfig |grep -A1 "eth0"| awk '{ if ( $1 == "inet" ) { print $2 }}'|cut -f2 -d":")
echo $newip
sed -i -r 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b'/$newip/ /var/www/index.html
