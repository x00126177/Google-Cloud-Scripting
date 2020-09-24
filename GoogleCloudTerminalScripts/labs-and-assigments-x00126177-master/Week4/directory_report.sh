#!/bin/bash


echo === Here is the directory report ===

# no of png files
echo Number of PNG files 
sudo find "$1" . -name "*.png*" | wc -l 

# no of .so files
echo Number of .so files
sudo find "$1" . -name  "*.so*" | wc -l

# no of subdirectories
echo Number of subdirectories
sudo find "$1" . -type d | wc -l


echo === Directory report for usr/lib ===

echo Number of PNG files & sudo find "$2" . -name "*.png*" | wc -l

echo Number of so files & sudo find "$2" . -name "*.so*" | wc -l

echo Number of subdirectories & sudo find "$2" . -type d | wc -l
