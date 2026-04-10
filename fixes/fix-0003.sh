#!/bin/bash

# fix Prevent update manager to spam users about upgrading

file="/etc/update-manager/release-upgrades.d/update-manager-slimbook.cfg"

if [ ! -f  $file ]; then
echo "Creating $file"
echo "[DEFAULT]
Prompt=never" > $file
fi
