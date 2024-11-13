#!/bin/bash


set -e

epubcount=$(find /mnt/ebooks -type f -iname '*.epub' | wc -l)
pdfcount=$(find /mnt/ebooks -type f -iname '*.pdf' | wc -l)
mobicount=$(find /mnt/ebooks -type f -iname '*.mobi' | wc -l)
txtcount=$(find /mnt/ebooks -type f -iname '*.txt' | wc -l)
rtfcount=$(find /mnt/ebooks -type f -iname '*.rtf' | wc -l)
doccount=$(find /mnt/ebooks -type f -iname '*.doc' | wc -l)
chmcount=$(find /mnt/ebooks -type f -iname '*.chm' | wc -l)
opfcount=$(find /mnt/ebooks -type f -iname '*.opf' | wc -l)
cbzcount=$(find /mnt/ebooks -type f -iname '*.cbz' | wc -l)
filecount=$(find /mnt/ebooks -type f | wc -l)
bookscount=$(($epubcount + $pdfcount + $mobicount + $rtfcount + $doccount + $txtcount + $opfcount + $chmcount))

echo "** eBooks Library Stats"
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
echo "Total books count: $bookscount"
echo "Total file count: $filecount"
echo -e
echo "Total size of ebooks library:"
du -h /mnt/ebooks | tail -n1

