#!/bin/bash

set -e
set -x

tmpdir=$(mktemp -d)
cd $tmpdir
git clone git@github.com:wordswords/media-library-homepage.git ./hp
rm -f ./hp/*.sh
rsync -avhH --delete --remove-source-files ./hp /var/www/html
rm -rf ./hp

