#!/bin/bash


set -e

epubcount=$(find /mnt/comics -type f -iname '*.epub' | wc -l)
pdfcount=$(find /mnt/comics -type f -iname '*.pdf' | wc -l)
mobicount=$(find /mnt/comics -type f -iname '*.mobi' | wc -l)
txtcount=$(find /mnt/comics -type f -iname '*.txt' | wc -l)
rtfcount=$(find /mnt/comics -type f -iname '*.rtf' | wc -l)
doccount=$(find /mnt/comics -type f -iname '*.doc' | wc -l)
chmcount=$(find /mnt/comics -type f -iname '*.chm' | wc -l)
opfcount=$(find /mnt/comics -type f -iname '*.opf' | wc -l)
cbzcount=$(find /mnt/comics -type f -iname '*.cbz' | wc -l)
filecount=$(find /mnt/comics -type f | wc -l)
bookscount=$(($epubcount + $pdfcount + $mobicount + $rtfcount + $doccount + $txtcount + $opfcount + $chmcount + $cbzcount))

echo "** Comics Library Stats"
echo -e
echo "File Types:"
echo "EPUB count: $epubcount"
echo "PDF count: $pdfcount"
echo "MOBI count: $mobicount"
echo "TXT count: $txtcount"
echo "RTF count: $rtfcount"
echo "DOC count: $doccount"
echo "CHM count: $chmcount"
echo "OPF count: $opfcount"
echo "CBZ count: $cbzcount"
echo "Total comics count: $bookscount"
echo "Total file count: $filecount"
echo -e
echo "Total size of comics library:"
du -h /mnt/comics | tail -n1

