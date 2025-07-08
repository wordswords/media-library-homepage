#!/bin/bash

set -e
set -x

tmpdir=$(sudo -u david mktemp -d)
cd $tmpdir
sudo -u david git clone --depth 1 git@github.com:wordswords/media-library-homepage.git ./hp
cd ./hp
sudo -u david ./remove-all-image-links-from-playnite-export.sh
sudo ./update-plex-inventories.sh
cd -
sudo -u david rm -f ./hp/*.sh
cd ./hp
sudo mkdir -p /var/www/media-library-homepage
sudo chown -R sonarr:users /var/www/media-library-homepage
sudo chmod -R 770 /var/www/media-library-homepage
rm -rf /var/www/media-library-homepage/*
sudo -u david rsync -avhH --delete --remove-source-files . /var/www/media-library-homepage || true
cd -
sudo -u david rm -rf ./hp

