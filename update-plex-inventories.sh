#!/bin/bash

set -e
set -x

tree -H '~' /mnt/video > video-inventory.html
tree -H '~' /mnt2/TV > TV-inventory.html
tree -H '~' /mnt2/music > music-inventory.html
tree -H '~' /mnt/comics > comics-inventory.html
tree -H '~' /mnt/ebooks > ebooks-inventory.html

