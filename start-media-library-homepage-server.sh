#!/bin/bash

set -e

cd /var/opt/media-library-homepage-server
/usr/bin/python3 -m http.server 7777 &>/dev/null &




