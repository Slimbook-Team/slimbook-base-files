#!/bin/bash

# fix Ubuntu security updated not honoring pinning

file="/etc/apt/apt.conf.d/99unattended-upgrades-slimbook-fix"

if [ ! -f  $file ]; then
echo "Creating $file"
echo "Unattended-Upgrade::Origins-Pattern {
    "origin=*";
};" > $file
fi
