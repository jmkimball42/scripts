#!/bin/sh

cd /websphere/scripts
wget http://artifactory.kroger.com/artifactory/list/kroger-middleware/wta/common/export_all_servers.py
wget http://artifactory.kroger.com/artifactory/list/kroger-middleware/wta/common/export_all_servers.sh
wget http://artifactory.kroger.com/artifactory/list/kroger-middleware/wta/common/export_cell.sh
wget http://artifactory.kroger.com/artifactory/list/kroger-middleware/wta/common/export_cell.py
chmod 744 export*.sh 
