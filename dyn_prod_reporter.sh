#!/bin/sh

set -xv
FILE=dynatrace_prod_hosts.json
FILE2=more_prod_hosts.txt

for i in `gawk -F: '{ print $1 }' $FILE2`
do
	echo "Number of occurrences of" $i
	grep $i $FILE | wc -l
done
