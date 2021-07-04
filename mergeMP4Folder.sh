#!/bin/sh

base_dir=$1
q=$2
for dir in "$base_dir"/*/; do
	cd ${dir}
	fname=$(basename $dir)
	echo $fname
	convert "*.{png,jpeg,jpg,bmp,tif}" -quality "$q" "$base_dir"/"$fname".pdf
done


