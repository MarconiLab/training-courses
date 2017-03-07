#!/bin/bash

# to convert .md files to pdf
# pandoc -f markdown_github -t beamer agenda.md -o agenda.pdf

# copy files from master course
cp ../master-course/src/resources.md ./src/
cp ../master-course/src/qgis-setup.md ./src/
cp ../master-course/src/handling-gis-layers.md ./src/
cp ../master-course/src/handling-crs.md ./src/
cp ../master-course/src/importing-csv.md ./src/
cp ../master-course/src/them-mapping-points.md ./src/
cp ../master-course/src/them-mapping-aggregation.md ./src/
cp ../master-course/src/intro-upload-carto.md ./src/
cp ../master-course/src/them-mapping-points-carto.md ./src/
cp ../master-course/src/appending-data.md ./src/
echo "Source files (.md) files copied successfully!"

# copy python courses
cp -R ../master-course/notebooks/data notebooks
echo "Data for Jupyter notebooks copied successfully!"
cp ../master-course/notebooks/1-python-foundations.ipynb notebooks
cp ../master-course/notebooks/2-python-eda-with-pandas.ipynb notebooks
cp ../master-course/notebooks/3-fetching-safecast-data.ipynb notebooks
cp ../master-course/notebooks/4-gis-and-mapping.ipynb notebooks
echo "Jupyter notebooks copied successfully!"

# copy img
cp -R ../master-course/src/img ./src/
echo "Images copied successfully!"

# copy data
cp -R ../master-course/data .
echo "Data copied successfully!"

# copy powerpoint presentations
cp -R ../master-course/ppt .
echo "Presentations copied successfully!"

# convert .md files to .pdf
cp -R src/img .
for i in $( ls src/*.md ); do
  filename=$(basename "$i")
  filename="${filename%.*}"
  pandoc -f markdown_github $i --latex-engine=xelatex --variable geometry:"top=1.5cm, bottom=2.5cm, left=1.5cm, right=1.5cm" -o "pdf/$filename.pdf"
  echo $i "converted to pdf"
done
rm -R img
