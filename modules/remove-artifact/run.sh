#!/bin/sh

rm /tmp/apache-camel-k-runtime-$CAMEL_K_RUNTIME_VERSION-m2.zip \
&& rm /usr/bin/mvn \
&& ln -s /opt/apache-maven-3.6.3 /opt/maven \
&& ln -s /opt/apache-maven-3.6.3/bin/mvn /usr/bin/mvn

