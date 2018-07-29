#!/bin/bash
for (( i=10; i <= 100; i = i + 10))
do
   infile=$(printf unsorted_%03d.infile $i)
   echo $infile
   ./generatewords.py $(($i*1000)) 6 > $infile
   outfile=$(printf sorted_%03d.infile $i)
   echo $outfile
   sort $infile > $outfile
done
echo “”
read -p "hold up"
