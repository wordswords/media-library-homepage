#!/bin/bash

set -e
set -x

if [ "$(id -u)" -ne 0 ] ; then
    echo 'You must be root to run this script'
    exit 1
fi


TMPDIR=$(mktemp -d)
git clone git@github.com:wordswords/media-library-homepage.git "${TMPDIR}"
rm -f "${TMPDIR}"/*.sh
sudo rsync -avhH --delete --remove-source-files "${TMPDIR}" /var/www/html
sudo rm -rf "${TMPDIR}"

