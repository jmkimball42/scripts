#!/bin/sh

set -xv

cd /tmp;wget http://artifactory.kroger.com/artifactory/kroger-middleware/wta/ibm/sdk/unrestrictedpolicyfiles.zip;
unzip -qo /tmp/unrestrictedpolicyfiles.zip -d /websphere/was/java/jre/lib/security;unzip -qo /tmp/unrestrictedpolicyfiles.zip -d /websphere/was/java_1.8_64/jre/lib/security;rm /tmp/unrestrictedpolicyfiles.zip

/websphere/was/java/jre/bin/java com.ibm.gsk.ikeyman.ikeycmd -cert -add -file /websphere/scripts/build/krogerca.cer -label KrogerCA -db /websphere/was/java/jre/lib/security/cacerts -pw changeit -type jks
/websphere/was/java_1.7_64/jre/bin/java com.ibm.gsk.ikeyman.ikeycmd -cert -add -file /websphere/scripts/build/krogerca.cer -label KrogerCA -db /websphere/was/java_1.7_64/jre/lib/security/cacerts -pw changeit -type jks
/websphere/was/java_1.8_64/jre/bin/java com.ibm.gsk.ikeyman.ikeycmd -cert -add -file /websphere/scripts/build/krogerca.cer -label KrogerCA -db /websphere/was/java_1.8_64/jre/lib/security/cacerts -pw changeit -type jks

