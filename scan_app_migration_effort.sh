#!/bin/sh
#
# Title: scan_app_migration_effort.sh
# Author: John M. Kimball
# Date: February 5, 2017
# Purpose: To report, in detail, the effort to migreate a WAS v. 8.5.5.x app
# to other editions of WAS or Liberty.
#
# Description:

# For debugging
set -xv

# This script grabs variables from a propery file - scan.properties

source $1

java -Xms1024m -Xmx1024m -jar binaryAppScanner.jar $MAN_WAS_INST_ROOT/$RMR_APP --analyze --sourceAppServer=was855 --sourceJava=ibm7 --targetJava=ibm8 --targetAppServer=libertyCore --format=html --output=/websphere/wamt

java -Xms1024m -Xmx1024m -jar binaryAppScanner.jar $MAN_WAS_INST_ROOT/$BUYPLAN_APP --analyze --sourceAppServer=was855 --sourceJava=ibm7 --targetJava=ibm8 --targetAppServer=libertyCore --format=html --output=/websphere/wamt

java -Xms1024m -Xmx1024m -jar binaryAppScanner.jar $MAN_WAS_INST_ROOT/$MAD_APP --analyze --sourceAppServer=was855 --sourceJava=ibm7 --targetJava=ibm8 --targetAppServer=libertyCore --format=html --output=/websphere/wamt

java -Xms1024m -Xmx1024m -jar binaryAppScanner.jar $MAN_WAS_INST_ROOT/$PLANTDB_APP --analyze --sourceAppServer=was855 --sourceJava=ibm7 --targetJava=ibm8 --targetAppServer=libertyCore --format=html --output=/websphere/wamt

#java -Xms1024m -Xmx1024m -jar binaryAppScanner.jar $WAS_INST_ROOT/mac-test_war.ear --analyze --sourceAppServer=was855 --sourceJava=ibm7 --targetJava=ibm7 --targetAppServer=libertyCore --format=html --output=/websphere/wamt
