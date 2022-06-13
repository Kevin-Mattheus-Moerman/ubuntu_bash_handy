#!/bin/sh

printf "file '%s'\n" *.mp4 > fileList.txt
ffmpeg -f concat -safe 0 -i fileList.txt -c copy output.mp4
rm fileList.txt
ffmpeg -i output.mp4 -vcodec h264 -acodec aac output_low.mp4
