#!/bin/sh

mkdir -p /tmp/artifact/m2 \
&& cd /tmp/artifact/m2 \
&& unzip -q /tmp/apache-camel-k-runtime-$CAMEL_K_RUNTIME_VERSION-m2.zip \
&& chgrp 185 /tmp/artifact/ \
&& find /tmp/artifact -type d -exec chmod 777 {} \;