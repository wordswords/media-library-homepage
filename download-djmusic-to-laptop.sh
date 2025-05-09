#!/bin/bash

set -x

# Check if the script is running as root
#
#
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo rsync -azP -e 'sudo ssh -p 608 -i ~david/.ssh/id_rsa' --progress david@hq.local:/mnt3/music /mnt/d/
