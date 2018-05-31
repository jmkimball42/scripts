#
# Title: export_cell.sh
# Author: John M. Kimball
# Date: March 8, 2017
# Purpose: Exports a WAS v. 8.5.5.x cell to a car file for import.
# Dqedription:
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

# I think I can do everything in wsadmin - jmk 10/28/09
cd $PROFILE_HOME/bin
./wsadmin.sh -lang jython -f $JYTHON_HOME/export_cell.py
