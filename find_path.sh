#!/bin/bash

if [ $# != 1 ]
then
	echo "Usage: Pass 2 arguments"
	exit 0
fi
	find $1 -type f -exec file {} + | grep ELF;


