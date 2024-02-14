#!/bin/bash

set -e
set -x

## Non greedy match hack
## https://stackoverflow.com/questions/1103149/non-greedy-reluctant-regex-matching-in-sed/46719361#46719361
find ./PlayNiteHTMLExport -name '*.html' -exec sed -i 's/<img[^>]*>&gt;//g' {} \;
find ./PlayNiteHTMLExport -name '*.html' -exec sed -i 's/<img[^>]*>//g' {} \;
find ./PlayNiteHTMLExport -name '*.html' -exec sed -i 's/270px/20px/g' {} \;
find ./PlayNiteHTMLExport -name '*.html' -exec sed -i 's/180px/400px/g' {} \;
