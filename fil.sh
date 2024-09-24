#!/bin/bash
# set counter 'c' to 1 and condition 
# c is less than or equal to 5
for (( c=160; c<=99999999; c++ ))
do 
   wget --timeout=10 -O q.html https://www.filimo.com/tag/$c ; rm q.html;
done
