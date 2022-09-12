#!/bin/bash

set -e

cd /var/opt/media-library-homepage-server
/usr/bin/git pull origin main
/usr/bin/python3 -m http.server &>/dev/null &




