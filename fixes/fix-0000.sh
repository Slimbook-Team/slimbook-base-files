#!/bin/bash

# Fixes neon-keyring postinstall using an uri with no release

file="/etc/apt/sources.list.d/neon.sources"

if [ -e $file ]; then
    md5=`md5sum $file | cut -d " " -f 1`

    if [ $md5 = "313a95ec5dc74245c18dafa94d995217" ]; then
        echo "Fixing $file"
        echo "X-Repolib-Name: KDE neon noble
Types: deb deb-src
URIs: http://archive.neon.kde.org/release
Suites: noble
Components: main
Architectures: amd64
Signed-By: /etc/apt/keyrings/neon-archive-keyring.asc" > $file
    fi

    if [ $md5 = "20d763d7bef53c0be3c42c11e26ffda8" ]; then
        echo "Fixing $file"
        echo "X-Repolib-Name: KDE neon noble
Types: deb deb-src
URIs: http://archive.neon.kde.org/release
Suites: noble
Components: main
Signed-By: /etc/apt/keyrings/neon-archive-keyring.asc" > $file
    fi

fi
