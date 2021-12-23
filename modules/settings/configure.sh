#!/bin/sh
# Configure module
set -e

SCRIPT_DIR=$(dirname $0)
SETTINGS_DIR=../${SCRIPT_DIR}/settings-xml

#chown -R jboss:root $SCRIPT_DIR
#chmod -R ug+rwX $SCRIPT_DIR
#chmod ug+x ${SETTINGS_DIR}/*

pushd ${SETTINGS_DIR}
cp -pr * /
popd