#!/bin/bash

set -e
set -x

find ./PlayNiteHTMLExport -name '*.html' -exec sed -i 's/\<img.*\>//g' {} \;


