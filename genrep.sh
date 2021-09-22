#!/bin/bash

#define all unwanted contents in html file for further action
pre="<tr><td>"
post="<\/td><\/tr>"
mid="<\/td><td>"

#1/ grab the html file; pipe it through to grep;
#2/ use grep to filter all lines but those contain <td>; pipe the result to sed;
#3/ use sed to replace all remaining html tags; pipe to awk;
#4/ use awk to calculate the sum of instances of different attacks in Q3 and print the result in 2 columns.

cat attacks.html | grep "<td>" | sed -e "s/^$pre//g; s/$post$//g; s/$mid/ /g" |  awk 'BEGIN{ printf "%7s %14s\n", "Attacks", "Instances(Q3)" } { sum=$2+$3+$4; print $1 "\t", sum } '


exit 0