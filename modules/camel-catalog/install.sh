#!/bin/sh
set -e

yum --disableplugin=subscription-manager install -y make
yum clean all