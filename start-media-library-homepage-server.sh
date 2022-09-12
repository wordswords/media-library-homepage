#!/bin/bash

set -e

cd /var/opt/media-library-homepage-server
git pull origin main
/usr/bin/env python3 -m http.server &>/dev/null &




