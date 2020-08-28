#!/bin/bash

if [ $# != 1 ]
then
	echo "Usage: Pass 2 arguments"
	exit 0
fi
	find $1 -executable -type f -exec ls -s {} + |sort -n;


