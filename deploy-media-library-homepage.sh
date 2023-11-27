#!/bin/bash

set -e
set -x

if [ "$(id -u)" -ne 0 ] ; then
    echo 'You must be root to run this script'
    exit 1
fi

sudo export tmpdir=$(mktemp -d) && cd $tmpdir && git clone git@github.com:wordswords/media-library-homepage.git ./hp && sudo rm -f ./hp/*.sh  && sudo rsync -avhH --delete --remove-source-files ./hp /var/www/html && sudo rm -rf ./hp'
