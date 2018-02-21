#!/bin/bash
#Daniel Schmidt

if [ -z "$1"]
then 
	echo "Usage: GradesAwk.sh filename"
	exit 1
fi

sort -k 3  $1 | awk '{print (($4+$5+$6)/3),"[",$1,"]",$3,", ",$2}'