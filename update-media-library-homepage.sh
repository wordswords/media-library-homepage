#!/bin/bash 

set -e
USER_ID=${UID}

sudo chown ${USER_ID} -R /var/opt/media-library-homepage-server
cd /var/opt/media-library-homepage-server
git pull origin main
sudo chown root -R /var/opt/media-library-homepage-server

