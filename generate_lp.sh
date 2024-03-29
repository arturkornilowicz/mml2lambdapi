#!/bin/bash

# m.lar is a file with names of Mizar articles to be translated
# $MIZFILES is a variable with Mizar installation

OUTPUT=lp
LARFILE=m.lar

#TIX_FILES=/Users/artur/TIX/tix_abs

TIX_FILES=/Users/artur/Artur/MizarDevelop/PROJEKTY/TESTS/mmlesx/temp/

if [ ! -d $OUTPUT ]
then
    mkdir $OUTPUT
fi	

rm -rf outputs/patterns.txt
rm -rf esx_errors.txt

nr=1
max=`wc -l $LARFILE`

for i in `cat $LARFILE`
do
    echo --- $i $nr of $max
    nr=`expr $nr + 1`
    ./mml2lp.sh $TIX_FILES $i $OUTPUT # translator
done

(sed -E 's/(RTE  : java.lang.RuntimeException: Translation not found.+)/xxx/g' esx_errors.txt | grep RTE) > esx_errors_1.txt 
