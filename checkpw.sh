#!/bin/bash

 # use awk to scan all password with 3 conditions: 1/contains at least 1 uppercase 2/ contains at least 1 digit 3/ contains 8 wordcount
 # then print out only the password column($2) and show if they meet or do not meet all requirement

 awk 'NR>1 { if ( $2 ~/[[:upper:]]+/ && $2 ~/[[:digit:]]+/ && $2 %8s )
             { print $2 "\t", "- meets password strength requirement" }
            else
             { print $2 "\t", "- does NOT meet password strength requirements" }

            }' usrpwords.txt
exit 0
