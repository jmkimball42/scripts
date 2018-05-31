#!/bin/sh

#WAS_ROOT=/websphere/was85
WAS_ROOT=/wtaapp/was

$WAS_ROOT/java_1.7_32/jre/bin/keytool -import -trustcacerts -keystore cacerts -storepass changeit -noprompt -alias KrogerRootCA -file /tmp/KrogerCA.cer

$WAS_ROOT/java_1.7_32/jre/bin/keytool -import -trustcacerts -keystore cacerts -storepass changeit -noprompt -alias KrogerP2 -file /tmp/KrogerP2.cer
