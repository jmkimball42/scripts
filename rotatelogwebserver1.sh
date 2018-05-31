#!/bin/sh

set -xv

date_tag=`date +%m%d%Y`
IHS_LOG_HOME=/wtalogs/IHS/webserver1
PLUGIN_DIR=/wtalogs/Plugins/webserver1

cd $IHS_LOG_HOME
find $IHS_LOG_HOME -name 'combined_log.*' -mtime +3 -exec gzip {} \;
find $IHS_LOG_HOME -name 'combined_log.*' -mtime +10 -exec rm {} \;
cp /dev/null $IHS_LOG_HOME/error_log

cd $PLUGIN_DIR
cp http_plugin.log http_plugin.log.$date_tag
cp /dev/null http_plugin.log
gzip http_plugin.log.$date_tag


cd $IHS_LOG_HOME
cp deflate_log deflate_log.$date_tag
cp /dev/null deflate_log 
gzip deflate_log.$date_tag
find $IHS_LOG_HOME -name 'deflate_log.*' -mtime +10 -exec rm {} \;
find $PLUGIN_DIR -name 'http_plugin.log.*' -mtime +10 -exec rm {} \;

cd $IHS_LOG_HOME
cp error_log error_log.$date_tag
cp /dev/null error_log
gzip error_log.$date_tag
find $IHS_LOG_HOME -name 'error_log.*' -mtime +10 -exec rm {} \;
