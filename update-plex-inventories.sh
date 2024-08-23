#!/bin/bash

set -e
set -x

tree /mnt/video > video-inventory.txt
tree /mnt2/TV > TV-inventory.txt
tree /mnt2/music > music-inventory.txt
tree /mnt/comics > comics-inventory.txt
tree /mnt/ebooks > ebooks-inventory.txt

