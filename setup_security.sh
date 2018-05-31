#!/bin/sh
#
# Title: setup_security.sh
# Author: John M. Kimball
# Date: November 26, 2013
# Purpose: Creates a WAS v. 8.5.5  without having to use a console. 
# Dsecurityription: 
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
./wsadmin.sh -lang jython -f $JYTHON_HOME/setup_security.py
