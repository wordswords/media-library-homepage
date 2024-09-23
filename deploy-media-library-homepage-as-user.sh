#!/bin/bash

set -e
set -x

tmpdir=$(mktemp -d)
cd $tmpdir
git clone --depth 1 git@github.com:wordswords/media-library-homepage.git ./hp
cd ./hp
./remove-all-image-links-from-playnite-export.sh
./update-plex-inventories.sh
cd -
rm -f ./hp/*.sh
cd ./hp
sudo mkdir -p /var/www/media-library-homepage
sudo chown -R sonarr:users /var/www/media-library-homepage
sudo chmod -R 770 /var/www/media-library-homepage
rsync -avhH --delete --remove-source-files . /var/www/media-library-homepage || true
cd -
rm -rf ./hp

