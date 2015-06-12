# FIND_REPLACE_COMMENTS.SH
#
# For all *.tex files in a folder, goes through them and replaces
# all commented lines (lines beginning with a % symbol)
#
# Author:      Zachary Clawson
# Date:        05/19/2014
# Email:       zc227@cornell.edu skimnc@gmail.com
# Affiliation: Cornell University

for file in *.tex
do
    sed 's/^%.*/% COMMENT REMOVED/gw temp.tex' $file > temp2.tex
    rm temp.tex
    mv temp2.tex $file
done
