#!/bin/bash
for i in *.gff 
do 
	awk '{if($3=="CDS") print $1,$4,$5,$6,$8,$7}' $i > $i.bed 
done
