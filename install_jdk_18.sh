#!/bin/sh

# MUST BE DONE AS ROOT

set -xv

/opt/IBM/InstallationManager/eclipse/tools/imcl install com.ibm.websphere.IBMJAVA.v80_8.0.2010.20160224_1829 -repositories http://u060wta83.kroger.com/repo/IBM/WAS -secureStorageFile /websphere/Builds/Installation/liberty.keys -masterPasswordFile /websphere/Builds/Installation/master.txt -properties cic.selector.arch=x86 -preferences com.ibm.cic.common.core.preferences.keepFetchedFiles=false,com.ibm.cic.common.core.preferences.preserveDownloadedArtifacts=false,offering.service.repositories.areUsed=false -installationDirectory /websphere/was85 -acceptLicense -showProgress
