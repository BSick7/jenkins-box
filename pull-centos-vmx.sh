#!/bin/bash

# Usage: ./pull-centos-vmx.sh <path/to/centos-vmware.box>

box_path="$1"

mkdir -p "./vmx-sources/centos-7/"
tar -C "./vmx-sources/centos-7/" -xvf "${box_path}"
