#!/bin/bash

# Expects the following environment variables:
#   JENKINS_URL     - url to download jenkins rpm
#   JENKINS_VERSION - jenkins version (ex: 2.70-1.1)

set -euo pipefail

me="install-jenkins"

file="jenkins-${JENKINS_VERSION}.noarch.rpm"

echo "downloading jenkins rpm..."
curl -SL -o "/tmp/${file}" "${JENKINS_URL}"

echo "installing jenkins ${JENKINS_VERSION} rpm..."
rpm -Uvh "/tmp/${file}"

echo "starting jenkins..."
/etc/init.d/jenkins restart
