#!/bin/bash

getprop() {
    wcnt=$(wc -w  $file | awk '{ print $1 }' ) # count words in the file; pipe and show only the wordcount result with awk
    fsize=$(du -b $file | awk '{ adj=$1/1024; printf "%.2f\n", adj }') # get the file size; pipe the result to convert in kilobtyes; show the result in 2 decimal places
    mdate=$(date -r $file "+%d-%m-%Y %H:%M:%S" ) # show the last modified date in assigned format
}

read -p 'Enter a file name to check: ' file # prompt user for a file name

# then check if the input file existed; hand it to function getprop()

if ! [ -f $file ]; then
   echo "No file to process."
   exit 1
else
   getprop $file
   echo "The file $file contains $wcnt words and is $fsize K in size and was last modified $mdate"
fi
exit 0