#!/bin/bash	
	# this is a comment
	# all scripts must start with #!/bin/bash
	
	# $1 is the first positional parameter to this script
	# $2 is the second positional parameters
	
	# Lets print something to the console
	echo "You are in the $(pwd) directory"
	
	# permissions on files
	# lets look at file permissions:
	ls -l
	
	# lets assign something to a variable
	cnt=2
	
	# and print this out
	echo "the variable cnt has the value $(cnt)"
	
	# list all the processes running
	ps -ef
	
	# counting things using wc -l
	# how many lines are there in the file /usr/local/include/python3.7m/abstract.h
	# see if you can find out
	
	# piping allows you to take the output of one command and use as input to another command
	# we use the | command for this purpose
	# what does this command do?
	ls | wc -l
	
	#Tgese are gsutil commands for creating buckets 
	64 gsutil mb gs://September262019
	65 gsutil cp data.dat gs://september262019

