#!/bin/bash

orig_ifs=IFS
IFS=$'\n'

ass1=( 12 18 20 10 12 16 15 19 8 11 ) #declare 2 arrays which are two assignments score relatively
ass2=( 22 29 30 20 18 24 25 26 29 30)

#with c-sytle loop
for (( i=0; i<=9; i++ )); do
   sum=$(( ${ass1[$i]}+${ass2[$i]} )) #calculate the sum of two assignments scores marked in 2 arraysn above
   echo "Student_$(($i+1)) Result:  $sum" 
done

IFS=orig_ifs
exit 0