#!/bin/bash

# script to create, backup, zip, copy tar file


if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
then
	echo "invalid parameters, try again"
	exit 1
else
	# 1 - tar the file
	tar -cvf $2.tar $1

	# 2 - zip the tar file
	gzip $2.tar

	# 3 - copy tar file to bucket
	gsutil cp $2.tar gs://$3
fi

