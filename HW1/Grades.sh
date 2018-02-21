#!/bin/bash
#Daniel Schmidt

if [ -z "$1"]
then 
	echo "Usage: Grades.sh filename"
	exit 1
fi

cat $1| sort -k 3 | while read p1 p2 p3 p4 p5 p6
do
	echo "$((($p4+$p5+$p6)/3)) [$p1] $p3, $p2"
done