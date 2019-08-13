#!/bin/sh

set -xv
FILE=dynatrace_prod_hosts.json

for i in `gawk -F: '{ print $1 }' myhosts.txt`
do
	echo "Number of occurrences of" $i
	grep $i $FILE | wc -l
done
