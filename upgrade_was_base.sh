#!/bin/sh

cd /opt/IBM/InstallationManager/eclipse/tools

./imcl install com.ibm.websphere.BASE.v85_8.5.5009.20160225_0435 -repositories http://u060wta83.kroger.com/repo/IBM/WAS -secureStorageFile /websphere/Builds/Installation/liberty.keys -masterPasswordFile /websphere/Builds/Installation/master.txt -properties cic.selector.arch=x86 -preferences com.ibm.cic.common.core.preferences.keepFetchedFiles=false,com.ibm.cic.common.core.preferences.preserveDownloadedArtifacts=false,offering.service.repositories.areUsed=false -installationDirectory /websphere/was85 -acceptLicense -showProgress                  
