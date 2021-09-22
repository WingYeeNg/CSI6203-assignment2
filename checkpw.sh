#!/bin/bash

 awk 'NR>1 { if ( $2 ~/[[:upper:]]+/ && $2 ~/[[:digit:]]+/ && $2 %8s )
             { print $2 "\t", "- meets password strength requirement" }
            else
             { print $2 "\t", "- does NOT meet password strength requirements" }

            }' usrpwords.txt
exit 0