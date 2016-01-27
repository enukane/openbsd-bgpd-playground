#!/bin/sh

NUM=$1
CONF=/vagrant/bgp.${NUM}.conf

sed -e 's/bgpd_flags=NO/bgpd_flags=YES/' /etc/rc.conf > /tmp/rc.conf
mv /tmp/rc.conf /etc/rc.conf

ln -s $CONF /etc/bgpd.conf
chown root:wheel /etc/bgpd.conf
chmod 700 /etc/bgpd.conf

route delete default
/usr/sbin/bgpd -v -f /etc/bgpd.conf
