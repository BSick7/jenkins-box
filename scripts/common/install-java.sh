#!/bin/bash

# Expects the following environment variables:
#   JAVA_URL     - url to download java rpm
#   JAVA_VERSION - java version (ex: jre-8u144)

set -euo pipefail

file="${JAVA_VERSION}-linux-x64.rpm"

echo "downloading java rpm..."
curl -SL -o "/tmp/${file}" "${JAVA_URL}"

echo "installing java ${JAVA_VERSION} rpm..."
rpm -Uvh "/tmp/${file}"
