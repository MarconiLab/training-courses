#!/bin/bash

# convert .md files to .pdf
cp -R src/img .
for i in $( ls src/*.md ); do
  filename=$(basename "$i")
  filename="${filename%.*}"
  pandoc -f markdown_github $i --latex-engine=xelatex --variable geometry:"top=1.5cm, bottom=2.5cm, left=1.5cm, right=1.5cm" -o "pdf/$filename.pdf"
  echo $i "converted to pdf"
done
rm -R img


