#!/bin/bash
# run_rgb_starnet++ infile outfile Stride(16,32,64,128...)

cd `dirname $0`

if [ $# -ne 2 ]; then
	if [ $# -ne 3 ]; then
		echo 'require args is 2 or 3 (args: infile outfile [Stride:16,32,64,128...])'
		exit 1;
	fi
fi

input=$1
output=$2
stride=64
if [ $# -eq 3 ]; then
	stride=$3
fi


echo "starnet++ $input $output $stride"
rgb_starnet++ $input $output $stride

exit 0