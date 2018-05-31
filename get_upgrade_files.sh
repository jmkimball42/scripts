#!/bin/sh

BUILD_DIR=/websphere/Builds/Installation
SCRIPT_DIR=/websphere/scripts

cd $BUILD_DIR
git clone https://jk97105:marr3489@stash.kroger.com/scm/wta/Mercury.git
cd Mercury*
mv l* ../
mv m* ../
mv *.sh $SCRIPT_DIR/build
mv *krogerca* $SCRIPT_DIR/build
