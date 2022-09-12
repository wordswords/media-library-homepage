#!/bin/bash 

set -e

sudo chown ${USER} -R /var/opt/media-library-homepage-server
cd /var/opt/media-library-homepage-server
git pull origin main
sudo chown root -R /var/opt/media-library-homepage-server

