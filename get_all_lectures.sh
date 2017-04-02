#!/bin/bash

for k in {1..12}
do
cd ./Topic$k
Rscript -e "library(knitr); knit('Topic$k.Rnw')"
pdflatex Topic$k.tex
cp Topic$k.pdf ../../course_material/LectureTopic"$k".pdf 
cd ../
done


cd ./full_lectures
Rscript -e "library(knitr); knit('master.Rnw')"
pdflatex master.tex
cp master.pdf ../../course_material/FullLectures.pdf 
cd ../
