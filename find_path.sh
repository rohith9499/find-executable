#!/bin/bash

if [ $# != 1 ]
then
	echo "Usage: Pass 2 arguments"
	exit 0
fi
	find $1 -type f -exec file {} + | grep elf| cut -d" " -f1 > file.txt;
	cat file.txt | cut -d":" -f1 >file2.txt
for i in $(cat file2.txt)
do
	NUM=$i
	size $NUM
done


