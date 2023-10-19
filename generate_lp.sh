#!/bin/bash

# m.lar is a file with names of Mizar articles to be translated
# $MIZFILES is a variable with Mizar installation

TEMP=temp
OUTPUT=lp

if [ ! -d $TEMP ]
then
    mkdir $TEMP
fi	

if [ ! -d $OUTPUT ]
then
    mkdir $OUTPUT
fi	

for i in `cat m.lar`
do
    echo $i
    \cp $MIZFILES/mml/$i.miz $TEMP
    accom $TEMP/$i # Mizar accommadator
    verifieresx -a $TEMP/$i # Mizar verifier
    ./mml2lp.sh $TEMP $i $OUTPUT # translator
    \rm $TEMP/$i.*
done
