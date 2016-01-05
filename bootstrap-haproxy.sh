#!/usr/bin/env bash

apt-get update
apt-get install -y haproxy hatop
cp /vagrant/haproxy.cfg /etc/haproxy
echo "ENABLED=1" > /etc/default/haproxy
service haproxy start
