#!/bin/bash

# fix bogus squash files left on dpkg info directory

find /var/lib/dpkg/info -type c -delete
