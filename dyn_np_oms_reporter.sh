#!/bin/sh

set -xv
FILE=dyn_np_host_info.json
FILE2=oms_np_hosts.txt

for i in `gawk -F: '{ print $1 }' $FILE2`
do
	echo "Number of occurrences of" $i
	grep $i $FILE | wc -l
done
