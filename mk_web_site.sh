#!/bin/sh

# For debugging
set -xv

# Let's setup some vars
REAL_WAS_ROOT=/opt
WAS_ROOT=/websphere
IKEY_DIR=Builds/Installation
KEY_FILE=was85NDRepo.keys
CURL_URL=http://u060wta81.kroger.com/was_nd_repository
WTA_DIR=wta/WAS85ND
S_DIR=scripts
B_DIR=build

# Time the install
echo "Started the web site install on:"
date
echo

# Setting up installation 

# Let's install Installation Manager
echo "Installing Installation Manager ..."
cd $REAL_WAS_ROOT
curl -s $CURL_URL/i_base.tar -o $REAL_WAS_ROOT/i_base.tar
tar xvf $REAL_WAS_ROOT/i_base.tar
rm $REAL_WAS_ROOT/i_base.tar
echo "Done Installing Installation Manager"
echo


# Let's setup our Build Factory - ND
echo "Setting up the Build Factory ..."
cd $REAL_WAS_ROOT
curl -s $CURL_URL/w_base.tar -o $REAL_WAS_ROOT/w_base.tar
tar xvf $REAL_WAS_ROOT/w_base.tar
rm $REAL_WAS_ROOT/w_base.tar
echo "Done Installing Installation Manager"
echo


# Setting up installation keys
echo "Setting up installation keys ..."
cd $WAS_ROOT
mkdir -p $IKEY_DIR
cd $WAS_ROOT/$IKEY_DIR
curl -s $CURL_URL/$KEY_FILE -o $WAS_ROOT/$IKEY_DIR/$KEY_FILE
echo "Done setting up installation keys"
echo

# Install the SW

# Install WAS, JDK and IHS
echo "Installing WAS, JDK and IHS ..."
cd $REAL_WAS_ROOT/$WTA_DIR
./build.rc
echo "Done installing WAS, JDK and IHS"
echo

# Get the JDBC drivers
echo "Installing the JDBC drivers ..."
cd /websphere/was85/lib
curl -s $CURL_URL/jdbc/db2jcc.jar -o /websphere/was85/lib/db2jcc.jar
curl -s $CURL_URL/jdbc/db2jcc_license_cisuz.jar -o /websphere/was85/lib/db2jcc_license_cisuz.jar
curl -s $CURL_URL/jdbc/db2jcc_license_cu.jar -o /websphere/was85/lib/db2jcc_license_cu.jar
curl -s $CURL_URL/jdbc/db2jcc4.jar -o /websphere/was85/lib/db2jcc4.jar
curl -s $CURL_URL/jdbc/sqljdbc.jar -o /websphere/was85/lib/sqljdbc.jar
curl -s $CURL_URL/jdbc/sqljdbc4.jar -o /websphere/was85/lib/sqljdbc4.jar
echo "Done - Installing the JDBC drivers"
echo

# Port httpd.conf and Start the web server - curl the fina41's httpd.conf in and use sed to port - jmk
echo "Installing the WAS plugin ..."
cd /usr/IHS/webserver1/conf
curl -s $CURL_URL/plugin.txt -o /usr/IHS/webserver1/conf/plugin.txt
cat httpd.conf plugin.txt >> httpd.conf.new
cp httpd.conf.new httpd.conf

echo "Done - Installing the WAS plugin"
echo

# Get the scripts
echo "Getting the scripts ..."
mkdir -p $WAS_ROOT/$S_DIR
cd $WAS_ROOT/$S_DIR
curl -s $CURL_URL/scripts.tar -o $WAS_ROOT/$S_DIR/scripts.tar
cd $WAS_ROOT/$S_DIR
tar xvf scripts.tar
chmod 700 *.sh
chmod 644 *.py
rm scripts.tar

echo "Done - Getting the scripts"
echo

# Populate the apps directory
echo "Populating apps ..."
cd /apps
curl -s $CURL_URL/a.tar -o /apps/a.tar
tar xvf a.tar
rm a.tar

echo "Done - Populating apps"
echo

echo "Install completed on:"
date
echo

# Changing ownership - Do at the very end
#cd $WAS_ROOT
#chown -R wasadmin.wasgrp was85