#!/bin/sh
sh init_apt.sh
echo /notebooks/.usr/lib > /etc/ld.so.conf.d/notebooks.conf
ldconfig
yash
