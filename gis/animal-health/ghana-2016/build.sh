#!/bin/bash

# to convert .md files to pdf
# pandoc -f markdown_github -t beamer agenda.md -o agenda.pdf

# copy files from master course
cp ../master-course/src/resources.md ./src/
cp ../master-course/src/qgis-setup.md ./src/
cp ../master-course/src/handling-gis-layers.md ./src/
cp ../master-course/src/importing-excel.md ./src/
cp ../master-course/src/managing-data-attributes.md ./src/
cp ../master-course/src/buffers.md ./src/
cp ../master-course/src/collect-lon-lat.md ./src/
cp ../master-course/src/edit-layer.md ./src/
cp ../master-course/src/nb-cases-grid.md ./src/
cp ../master-course/src/nb-cases-admin.md ./src/
cp ../master-course/src/dissolving-poly.md ./src/
cp ../master-course/src/intro-upload-carto.md ./src/
cp ../master-course/src/disease-spread-carto.md ./src/
echo "Source files (.md) files copied successfully!"

# copy img
#cp -R ../master-course/src/img ./src/
#echo "Images copied successfully!"

# copy data
#cp -R ../master-course/data .
#echo "Data copied successfully!"

# copy powerpoint presentations
#cp -R ../master-course/ppt .
#echo "Presentation copied successfully!"

# convert .md files to .pdf
for i in $( ls src/*.md ); do
  filename=$(basename "$i")
  filename="${filename%.*}"
  pandoc -f markdown_github -t beamer $i -o "./pdf/$filename.pdf" 
  echo $i "converted"
done
