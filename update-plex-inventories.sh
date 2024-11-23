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
tree -H '~' /mnt2/audiobooks > audiobooks-inventory.html
remove_links "./audiobooks-inventory.html"
tree -H '~' /mnt2/music > music-inventory.html
remove_links "./music-inventory.html"
tree -H '~' /mnt/comics > comics-inventory.html
remove_links "./comics-inventory.html"
tree -H '~' /mnt/ebooks > ebooks-inventory.html
remove_links "./ebooks-inventory.html"
tree -H '~' /mnt/games > games-inventory.html
remove_links "./games-inventory.html"

./print-ebooks-library-stats.sh > ./ebooks-stats.txt
./print-audiobooks-library-stats.sh > ./audiobooks-stats.txt
./print-music-library-stats.sh > ./music-stats.txt
./print-comics-library-stats.sh > ./comics-stats.txt

./insert-stats-to-inventory.sh ./ebooks-stats.txt ./ebooks-inventory.html
./insert-stats-to-inventory.sh ./music-stats.txt ./music-inventory.html
./insert-stats-to-inventory.sh ./comics-stats.txt ./comics-inventory.html
./insert-stats-to-inventory.sh ./audiobooks-stats.txt ./audiobooks-inventory.html

