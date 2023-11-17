#!/bin/bash

set -e
set -x

if [ "$(id -u)" -ne 0 ] ; then
    echo 'You must be root to run this script'
    exit 1
fi


TMPDIR=$(mktemp -d)
sudo runuser -u david -- /bin/zsh -c "git clone git@github.com:wordswords/media-library-homepage.git ${TMPDIR}/hp"
sudo rm -f "${TMPDIR}/hp"/*.sh
sudo rsync -avhH --delete --remove-source-files "${TMPDIR}/hp" /var/www/html
sudo rm -rf "${TMPDIR}"

