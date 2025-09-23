#!/bin/bash


set -e

mkvcount=$(find -L /home/TV -type f -iname '*.mkv' | wc -l)
mp4count=$(find -L /home/TV -type f -iname '*.mp4' | wc -l)
videocount=$(($mkvcount + $mp4count))

echo "** TV Library Stats"
echo -e
echo "File Types:"
echo "MKV count: $mkvcount"
echo "MP4 count: $mp4count"
echo "Total TV episode count: $videocount"
echo -e
echo "Total size of TV library:"
du -Lh /home/TV | tail -n1

