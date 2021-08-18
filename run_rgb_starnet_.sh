#!/bin/bash
# run_rgb_starnet++ infile outfile StarSize(16,32,64...)

cd `dirname $0`

if [ $# -ne 2 ]; then
	if [ $# -ne 3 ]; then
		echo 'require args is 2 or 3 (args: infile outfile [16,32,64...])'
		exit 1;
	fi
fi

input=$1
output=$2
number=64
if [ $# -eq 3 ]; then
	number=$3
fi


echo "starnet++ $input $output $number"
rgb_starnet++ $input $output $number

exit 0