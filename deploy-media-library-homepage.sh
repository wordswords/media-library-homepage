#!/bin/bash

set -e
set -x

if [ "$(id -u)" -ne 0 ] ; then
    echo 'You must be root to run this script'
    exit 1
fi

./deploy-media-library-homepage-as-user.sh



