#!/bin/bash

set -e

TMPDIR=$(mktemp -d)
git clone git@github.com:wordswords/media-library-homepage.git "${TMPDIR}"
rm -f "${TMPDIR}"/*.sh
sudo cp "${TMPDIR}"/* /var/www/html
rm -rf "${TMPDIR}"


