#!/bin/bash

set -e
set -x

function remove_links () {
    sed -i 's/<a[^>]*>//g' "$1"
}

tree -H '~' /mnt/video > video-inventory.html
remove_links "./video-inventory.html"
tree -H '~' /mnt2/TV > TV-inventory.html
remove_links "./TV-inventory.html"
tree -H '~' /mnt2/music > music-inventory.html
remove_links "./music-inventory.html"
tree -H '~' /mnt/comics > comics-inventory.html
remove_links "./comics-inventory.html"
tree -H '~' /mnt/ebooks > ebooks-inventory.html
remove_links "./ebooks-inventory.html"
tree -H '~' /mnt/games > games-inventory.html
remove_links "./games-inventory.html"


