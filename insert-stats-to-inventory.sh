#!/bin/bash

set -e
set -x

head -n 26 $2 >> $2.tmp
echo "<pre>" >> $2.tmp
cat $1 >> $2.tmp
echo "</pre>" >> $2.tmp
tail -n +27 $2 >> $2.tmp
mv $2.tmp $2

