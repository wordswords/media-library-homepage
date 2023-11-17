#!/bin/bash

set -e

TMPDIR=$(mktemp -d)
git clone git@github.com:wordswords/media-library-homepage.git "${TMPDIR}"
rm -f "${TMPDIR}"/*.sh
sudo rsync -avhH --delete --remove-source-files "${TMPDIR}" /var/www/html
sudo rm -rf "${TMPDIR}"

