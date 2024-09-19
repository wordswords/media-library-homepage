#!/bin/bash

set -e
set -x

tree -H '~' /mnt/video > video-inventory.txt
tree -H '~' /mnt2/TV > TV-inventory.txt
tree -H '~' /mnt2/music > music-inventory.txt
tree -H '~' /mnt/comics > comics-inventory.txt
tree -H '~' /mnt/ebooks > ebooks-inventory.txt

