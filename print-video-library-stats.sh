#!/bin/bash


set -e

mkvcount=$(find -L /home/video -type f -iname '*.mkv' | wc -l)
mp4count=$(find -L /home/video -type f -iname '*.mp4' | wc -l)
videocount=$(($mkvcount + $mp4count))

echo "** Video Library Stats"
echo -e
echo "File Types:"
echo "MKV count: $mkvcount"
echo "MP4 count: $mp4count"
echo "Total video count: $videocount"
echo -e
echo "Total size of music library:"
du -Lh /home/music | tail -n1

