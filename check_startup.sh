#!/bin/bash
ls -1 /etc/rc$(runlevel| cut -d" " -f2).d/S* | \
awk -F'[0-9][0-9]' '{print "Startup :-> " $2}'
