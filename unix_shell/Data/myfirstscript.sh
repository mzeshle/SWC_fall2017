#!/bin/bash
#report the country with the highest life expectancy from the year 2002
# usage: sh script .sh inputfile year columnNumber outputfilename

input=$1
year=$2
columns=$3
out=$4

cut -f1,3,$columns $input | grep $year | sort -k3 -n | tail -n 1 > $out.txt
