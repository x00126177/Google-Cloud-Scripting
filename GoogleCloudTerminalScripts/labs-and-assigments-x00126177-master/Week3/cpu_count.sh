  
#!/bin/bash

# Searching cpuinfo for process, then word counting it and saving it as a variable CNT
cnt = cat /proc/cpuinfo | grep processor | wc -l

if ["cnt" -gt "$1"];
then
	echo "OK - Correct CPU's"

else
	echo "Too few CPU's"

fi



