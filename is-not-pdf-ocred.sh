#!/bin/bash

#pdfs = $(find . -type f  -iname "*.pdf")

for pdf in $(find . -type f  -iname "*.pdf")
do
MYFONTS=$(pdffonts "$pdf" | tail -n +3 | cut -d' ' -f1 | sort | uniq)
if [ "$MYFONTS" = '' ] || [ "$MYFONTS" = '[none]' ]; then
    echo "$pdf"
fi
done
 