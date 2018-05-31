#!/bin/sh
#
# Title: tune_admin.sh
# Author: John M. Kimball
# Date: October 28, 2009
# Purpose: Changes an app server in WAS 6 without having to use a console. 
# Description: 
#
# Note: 
# 
# Revisions:

# For debugging
set -xv
#
# Let's initialize some variables
WAS_HOME=/wtaapp/was
PROFILE_HOME=$WAS_HOME/profiles/Admin
JYTHON_HOME=/automation/scripts

# I think I can do everything in wsadmin - jmk 10/28/09
cd $PROFILE_HOME/bin
./wsadmin.sh -lang jython -f $JYTHON_HOME/tune_admin.py
