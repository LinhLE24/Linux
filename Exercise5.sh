#!/bin/bash
#5.1
grep ^...$ /etc/squid/squid.conf

#5.2
grep -E '^.{3,}$' /etc/squid/squid.conf

#5.3
grep -E '^.{0,3}$' /etc/squid/squid.conf

#5.4
grep '^$' /etc/squid/squid.conf

#5.5
grep -v ^[A-G] /etc/squid/squid.conf

#5.6
grep -v -e "^#" -e "^$" /etc/squid/squid.conf

#5.7
sed -n '1,25s/squid/squid3/pg' /etc/squid/squid.conf

#5.8
sed -n 's/squid/squid3/pg' /etc/squid/squid.conf

#5.9
sed '/ACL/Id' /etc/squid/squid.conf

#5.10
sed '10,$d' /etc/squid/squid.conf

#5.11
sed '/src/d' /etc/squid/squid.conf

#5.12
sed -e '/^#/d' -e '/^$/d' /etc/squid/squid.conf

