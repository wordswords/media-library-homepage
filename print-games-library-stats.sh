#!/bin/bash


set -e

romcount=$(find -L /home/games/ -type f -iname '*.rom' | wc -l)
isocount=$(find -L /home/games/ -type f -iname '*.iso' | wc -l)
bincount=$(find -L /home/games/ -type f -iname '*.bin' | wc -l)
chdcount=$(find -L /home/games/ -type f -iname '*.chd' | wc -l)
zipcount=$(find -L /home/games/ -type f -iname '*.zip' | wc -l)
execount=$(find -L /home/games/ -type f -iname '*.exe' | wc -l)
xcicount=$(find -L /home/games/ -type f -iname '*.xci' | wc -l)
nspcount=$(find -L /home/games/ -type f -iname '*.nsp' | wc -l)
gbacount=$(find -L /home/games/ -type f -iname '*.gba' | wc -l)
ndscount=$(find -L /home/games/ -type f -iname '*.nds' | wc -l)
imgcount=$(find -L /home/games/ -type f -iname '*.img' | wc -l)
nescount=$(find -L /home/games/ -type f -iname '*.nes' | wc -l)
pbpcount=$(find -L /home/games/ -type f -iname '*.pbp' | wc -l)
thirty2xcount=$(find -L /home/games/ -type f -iname '*.32x' | wc -l)
threedscount=$(find -L /home/games/ -type f -iname '*.3ds' | wc -l)
wuacount=$(find -L /home/games/ -type f -iname '*.wua' | wc -l)
sevenzcount=$(find -L /home/games/ -type f -iname '*.7z' | wc -l)
gamescount=$(($romcount + $isocount + $bincount + $chdcount + $zipcount + $execount + $nspcount + $gbacount + $imgcount + $nescount + $pbpcount + $thirty2xcount + $threedscount + $wuacount + $sevenzcount))

echo "** Games Library Stats"
echo -e
echo "File Types:"
echo ".ROM count: $romcount"
echo ".ISO count: $isocount"
echo ".BIN count: $bincount"
echo ".CHD count: $chdcount"
echo ".ZIP count: $zipcount"
echo ".EXE count: $execount"
echo ".XCI count: $xcicount"
echo ".NSP count: $nspcount"
echo ".GBA count: $gbacount"
echo ".NDS count: $ndscount"
echo ".IMG count: $imgcount"
echo ".NES count: $nescount"
echo ".PBP count: $pbpcount"
echo ".32x count: $thirty2xcount"
echo ".3DS count: $threedscount"
echo ".WUA count: $wuacount"
echo ".7z count: $sevenzcount"
echo -e
echo "Total identified possible games: $gamescount"
echo -e
echo "Total size of games library:"
du -Lh /home/games/ | tail -n1

