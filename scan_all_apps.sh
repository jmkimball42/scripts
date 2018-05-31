#!/bin/sh
#
# Title:
# Author:

# For debugging
set -xv

WAS_INST_ROOT=/websphere/was85/profiles/Custom01/installedApps/corpsysCell

java -jar binaryAppScanner.jar $WAS_INST_ROOT/CARS.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/CES.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/CDR.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/CLM.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/CRP.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/E40.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/EAA.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/EJ_CRON.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/EJ.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/ESC.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/FRM.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/FSS.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/GOCART.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/IDR.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/IMI.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/IRS.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/MRA_BATCH.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/MRA.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/PROMOBILLING_TEST.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/QED.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/REM_BATCH.ear
java -jar binaryAppScanner.jar $WAS_INST_ROOT/REM.ear
