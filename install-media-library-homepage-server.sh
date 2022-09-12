#!/bin/bash

set -e

sudo mkdir -p /var/opt/media-library-homepage-server
sudo chown "$UID" -R /var/opt/media-library-homepage-server
git clone git@github.com:wordswords/media-library-homepage.git /var/opt/media-library-homepage-server
sudo cp /var/opt/media-library-homepage-server/media-library-homepage-server /etc/init.d/
sudo chmod u+x /etc/init.d/media-library-homepage-server

