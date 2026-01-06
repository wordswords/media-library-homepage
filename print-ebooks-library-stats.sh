#!/bin/bash


set -e

epubcount=$(find -L /home/ebooks/ -type f -iname '*.epub' | wc -l)
pdfcount=$(find -L /home/ebooks/ -type f -iname '*.pdf' | wc -l)
mobicount=$(find -L /home/ebooks/ -type f -iname '*.mobi' | wc -l)
txtcount=$(find -L /home/ebooks/ -type f -iname '*.txt' | wc -l)
rtfcount=$(find -L /home/ebooks/ -type f -iname '*.rtf' | wc -l)
doccount=$(find -L /home/ebooks/ -type f -iname '*.doc' | wc -l)
chmcount=$(find -L /home/ebooks/ -type f -iname '*.chm' | wc -l)
opfcount=$(find -L /home/ebooks/ -type f -iname '*.opf' | wc -l)
cbzcount=$(find -L /home/ebooks/ -type f -iname '*.cbz' | wc -l)
filecount=$(find -L /home/ebooks/ -type f | wc -l)
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
du -hL /home/ebooks/ | tail -n1

