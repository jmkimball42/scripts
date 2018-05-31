#!/bin/sh
#
# Title: import_cell.sh
# Author: John M. Kimball
# Date: March 8, 2017
# Purpose: Imports a WAS v. 8.5.5.x cell to a car file for import.
# Dqedription:
#
# Note:
#
# Revisions:

# For debugging
set -xv
#
# Let's initialize some variables
WAS_HOME=/wtaapp/was
PROFILE_HOME=$WAS_HOME/profiles/Custom01
JYTHON_HOME=/automation/scripts/build

# I think I can do everything in wsadmin - jmk 10/28/09
cd $PROFILE_HOME/bin
./wsadmin.sh -lang jython -f $JYTHON_HOME/import_cell.py
