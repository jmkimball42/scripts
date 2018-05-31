#!/bin/sh
#
# Title: add_signers.sh
# Author: John M. Kimball
# Date: November 28, 2011
# Purpose: Adds Enterprise IDs to WebSphere Application Server (WAS) signers roles. 
# Description: 
#
# Note: 
# 
# Revisions:

# For debugging
set -xv
#
# Let's initialize some variables
WAS_HOME=/websphere/was85
PROFILE_HOME=$WAS_HOME/profiles/Custom01
JYTHON_HOME=/websphere/scripts

# I can do everything in wsadmin - jmk 11/28/09
cd $PROFILE_HOME/bin
./wsadmin.sh -lang jython -f $JYTHON_HOME/add_signers.py
