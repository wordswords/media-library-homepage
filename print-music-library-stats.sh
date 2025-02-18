#!/bin/bash


set -e

flaccount=$(find /mnt3/music -type f -iname '*.flac' | wc -l)
mp3count=$(find /mnt3/music -type f -iname '*.mp3' | wc -l)
wavcount=$(find /mnt3/music -type f -iname '*.wav' | wc -l)
oggcount=$(find /mnt3/music -type f -iname '*.ogg' | wc -l)
m4acount=$(find /mnt3/music -type f -iname '*.m4a' | wc -l)
filecount=$(find /mnt3/music -type f | wc -l)
trackcount=$(($flaccount + $mp3count + $wavcount + $oggcount))

echo "** Music Library Stats"
echo -e
echo "File Types:"
echo "FLAC count: $flaccount"
echo "MP3 count: $mp3count"
echo "WAV count: $wavcount"
echo "OGG count: $oggcount"
echo "M4A count: $m4acount"
echo "Total track count: $trackcount"
echo "Total file count: $filecount"
echo -e
echo "Total size of music library:"
du -h /mnt3/music | tail -n1

