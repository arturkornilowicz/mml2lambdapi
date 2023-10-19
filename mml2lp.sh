#!/bin/bash

# $1 dir name with input files
# $2 file name to be translated
# $3 dir name with output files

if [ $1 ]
then
    if [ $2 ]
    then
	if [ $3 ]
	then
	    java -jar target/mml2lambdapi-1.0-SNAPSHOT-jar-with-dependencies.jar $1 $2 $3
	else
	    echo -e "\nEnter dir name with output LP files !!!\n"
	fi
    else
	echo -e "\nEnter file name !!!\n"
    fi
else
    echo -e "\nEnter dir name with input files !!!\n"
fi
