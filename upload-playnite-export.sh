#!/bin/bash

set -e
set -x

./copy-from-gaming-laptop-playnite-export.sh
./remove-all-image-links-from-playnite-export.sh
git add ./PlayNiteHTMLExport
git commit -m"Latest PlayNiteHTMLExport"
git pushd

