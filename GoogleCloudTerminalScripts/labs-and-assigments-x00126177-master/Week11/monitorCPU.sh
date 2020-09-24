#!/bin/bash

# Step 4
while true;
do

# Step 1

util=$(uptime  | awk ' { print $11 } ' )

# Step 2 - passing in If

if [[ $util > $1 ]]
then

# Step 3

	processes=$(ps aux | wc -l)

	echo "`date` CPU Utilization: $util Exceeding Limit: $1 Total Processes running: $processes " >> log.txt
else
	exit
fi

sleep 10
done


# additional features
# truncating logfile
logCount=$(more logile.txt | wc-l)
if [[ $logCount -gt 100 ]]
then
	echo "`date` CPU Utilization: $util Exceeding Limit: $1 Total Processes running: $processes " > log.txt
fi


# ./monitor 0.5 & - run the script in the background so the cmd can be used
