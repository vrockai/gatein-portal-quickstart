#!/bin/bash
mvn clean install
BUILD_STATUS=$?

WAR_NAME="navigation-api-portlet.war"
DEPLOY_PATH=~/workspace/viliam-sandbox/standalone/deployments/

rm -rf $WAR_NAME

unzip ./target/$WAR_NAME -d ./$WAR_NAME
cp -r ./$WAR_NAME $DEPLOY_PATH

if [[ $BUILD_STATUS != 0 ]] ; 
then
  alert-snd "Navigation build failed" error
else
  alert-snd "Navigation build ready" weather-clear
fi
