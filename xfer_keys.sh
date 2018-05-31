#!/bin/sh
#
# Title:  xfer_keys.sh
# Author: John M. Kimball
# Date: May 27, 2018
# Purpose: This script will transfer my SSH keys to various hosts.
# Description: I wrote this script to read a hosts file to transfer my PC's Cygwin SSH key to various hosts to allow passwordless
# logins.  This will help automate tasks through Ansible and allow me to gather data without logging in.

# For debugging
set -xv

# Some vars
file=hosts
uid=jk97105

while read var1; do
ssh-copy-id $uid@$var1
done <$file
