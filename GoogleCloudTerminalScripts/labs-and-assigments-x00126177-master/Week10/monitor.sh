#!/bin/bash

# ip address to monitor
ipBank=35.188.198.51

# while look

while true;
do

	count=$(wget -O - $ipBank 2>/dev/null | grep "account balance" | wc -l)

# if test

	if [ $count -ne 1 ]
	then
		echo "Error: Page is not responding "
		sleep 2
	else
		echo "Page is responding"
		sleep 1
	fi

	sleep 4
done
