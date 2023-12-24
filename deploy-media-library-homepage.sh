#!/bin/bash

set -e
set -x

if [ "$(id -u)" -ne 0 ] ; then
    echo 'You must be root to run this script'
    exit 1
fi

rm -rf /var/www/html/*
chown -R root:users /var/www/html
chmod 775 -R /var/www/html
runuser david -- ./deploy-media-library-homepage-as-user.sh


