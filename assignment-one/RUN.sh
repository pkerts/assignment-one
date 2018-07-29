#!/bin/bash

#do we have both arguments?
#https://stackoverflow.com/questions/6482377/check-existence-of-input-argument-in-a-bash-shell-script
if [ -z "$2" ] ; then
	echo "Usage: <scriptName> <optimizationLevel> <numberOfThousandsOfInputs>"; 
	exit 1
fi

#are they both nubmers?
#https://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-is-a-number-in-bash
re='^[0-9]+$'
if ! [[ $1 =~ $re ]] ; then
	echo "Usage: <scriptName> <optimizationLevel> <numberOfThousandsOfInputs>"; 
	echo "Error: First Argument is not a number " >&2; 
	exit 1
fi

if ! [[ $2 =~ $re ]] ; then
	echo "Usage: <scriptName> <optimizationLevel> <numberOfThousandsOfInputs>"; 
	echo "Error: Second Argument is not a number " >&2; 
	exit 1
fi

infile=$(printf sorted_%03d.infile $2)
program=$(printf ./bst_wordCount_optimized_%d $1)
outfile=$(printf sortedyes.outfile)_
echo "running $program $infile"

$program < $infile > $outfile
