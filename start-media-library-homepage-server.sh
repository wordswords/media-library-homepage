#!/bin/bash

set -e

cd /var/opt/media-library-homepage-server
python3 -m http.server &>/dev/null &




