#!/bin/sh

set -xv
FILE=dyn_np_host_info.json

for i in `gawk -F: '{ print $1 }' nphosts.txt`
do
	echo "Number of occurrences of" $i
	grep $i $FILE | wc -l
done
