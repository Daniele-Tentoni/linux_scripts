#!/bin/bash
if [ $# -gt 0 ]; then
	echo "There are $# arguments to process."
	
	# Process all arguments, flags too.
	for arg in "$@"
	do
		echo "Arg: $arg"
	done
	
	# Process only selected flags.
	# This lack some features.
	while getopts g:h: flag
	do
		case "${flag}" in
			g) gears=${OPTARG};;
			h) hate=${OPTARG};;
		esac
	done
	
	echo "Gears are $gears and hate are $hate"
else
	echo "There aren't arguments to process."
fi

if [ `cat .errors | wc -l` -gt 0 ]; then
	echo "There was some errors, see .errors file."
else
	echo "Correctly terminated."
fi
