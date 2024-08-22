#!/bin/bash

set -e
set -x

if [ "$(id -u)" -ne 0 ] ; then
    echo 'You must be root to run this script'
    exit 1
fi

rm -rf /var/www/media-library-homepage/*
runuser david -- ./deploy-media-library-homepage-as-user.sh
chown -R root:users /var/www/media-library-homepage
chmod 775 -R /var/www/media-library-homepage



