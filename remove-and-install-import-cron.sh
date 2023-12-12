#!/bin/bash

set -x
set -e

sudo chown root:users ./daily-cron-media-library-homepage-deploy-screen # has to be owned by root to run as cron
sudo chmod 775 ./daily-cron-media-library-homepage-deploy-screen
sudo rm -f /etc/cron.daily/daily-cron-media-library-homepage-deploy-screen
sudo mf -f ${PWD}/daily-cron-media-library-homepage-deploy-screen /etc/cron.daily/daily-cron-media-library-homepage-deploy-screen






