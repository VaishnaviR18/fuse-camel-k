#!/bin/sh
set -e

tar zxf /apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt --no-same-owner
rm /camel-k-$CAMEL_K_TAG/deploy/camel-catalog-*