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

cp -R ../master-course/src/img ./src/
echo "Source files (.md) files copied successfully!"
