#!/bin/bash

set -e

cd /var/opt/media-library-homepage-server
git pull origin main
python3 -m http.server &>/dev/null &




