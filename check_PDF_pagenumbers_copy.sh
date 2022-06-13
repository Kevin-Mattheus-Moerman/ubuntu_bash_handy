#!/bin/sh

LINES=$(cat "$(pwd)/links.txt")
rm pageCounts.csv
i=1
for w in $LINES
	do
	echo "$w"
		
		
	wget  -O "pdffile_$i.pdf" $(pwd) $w #Download file
	
	sleep 0.25 
	
#	n=$("pdffile_$i.pdf" 2>/dev/null | wc -l | tr -d ' ')	
#	echo $n
	n=$(pdfinfo "pdffile_$i.pdf" | grep -Po 'Pages:[[:space:]]+\K[[:digit:]]+')
	
	#pdfinfo "pdffile_$i.pdf" | grep  Pages | awk -v n='{print $2}'
#	n=$($(pwd) "pdffile_$i.pdf" 2>/dev/null | wc -l | tr -d ' ')
	
#	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"	
#	echo $n
#	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"			
	
	printf '%s, %d \n' $w $n >> pageCounts.csv
	
	f="$(pwd)/pdffile_$i.pdf"
	rm $f
	sleep 0.25
	
	i=$((i + 1))	
	
done


