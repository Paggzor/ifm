#!/bin/sh

if [ -e /usr/sbin/sysctl ]
then
	#mac
	sysctl -n hw.ncpu
elif [ -e /proc/cpuinfo ]
then
	#linux
	cat /proc/cpuinfo  | grep -i processor | tail -n1 | awk '{print $$3}'
else
	#reasonable default
	echo 4
fi


