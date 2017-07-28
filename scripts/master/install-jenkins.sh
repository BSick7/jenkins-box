#!/bin/bash

# Expects the following environment variables:
#   JENKINS_URL     - url to download jenkins rpm
#   JENKINS_VERSION - jenkins version (ex: 2.70-1.1)

set -euo pipefail

me="install-jenkins"

echo "downloading jenkins rpm..."
curl -SL -O "${JENKINS_URL}"

echo "installing jenkins ${JENKINS_VERSION} rpm..."
rpm -Uvh "./jenkins-${JENKINS_VERSION}.noarch.rpm"

echo "starting jenkins..."
/etc/init.d/jenkins restart
