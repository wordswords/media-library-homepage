#!/bin/bash

set -e
set -x

tmpdir=$(mktemp -d)
cd $tmpdir
git clone git@github.com:wordswords/media-library-homepage.git ./hp
cd ./hp
./remove-all-image-links-from-playnite-export.sh
cd -
rm -f ./hp/*.sh
cd ./hp
mkdir -p /var/www/media-library-homepage
rsync -avhH --delete --remove-source-files . /var/www/media-library-homepage || true
cd -
rm -rf ./hp

