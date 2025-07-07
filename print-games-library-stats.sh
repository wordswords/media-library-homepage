#!/bin/bash


set -e

isocount=$(find -L /mnt/games -type f -iname '*.iso' | wc -l)
bincount=$(find -L /mnt/games -type f -iname '*.bin' | wc -l)
chdcount=$(find -L /mnt/games -type f -iname '*.chd' | wc -l)
zipcount=$(find -L /mnt/games -type f -iname '*.zip' | wc -l)
execount=$(find -L /mnt/games -type f -iname '*.exe' | wc -l)
gamescount=$(($isocount + $bincount + $chdcount + $zipcount + $execount))

echo "** Games Library Stats"
echo -e
echo "File Types:"
echo ".ISO count: $isocount"
echo ".BIN count: $bincount"
echo ".CHD count: $chdcount"
echo ".ZIP count: $zipcount"
echo ".EXE count: $execount"
echo -e
echo "Total identified possible games: $gamescount"
echo -e
echo "Total size of games library:"
du -Lh /mnt/games | tail -n1

