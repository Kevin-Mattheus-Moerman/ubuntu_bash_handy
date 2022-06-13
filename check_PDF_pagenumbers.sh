#!/bin/sh

LINES=$(cat "$(pwd)/links.txt")
#rm pageCounts.csv
i=1
for w in $LINES
	do
	echo "$w"
	
	a=1	
	n=0
	while [ $a -lt 4 ]
	
		do
		
		wget  -O "pdffile_$i.pdf" $(pwd) $w #Download file
	
		#sleep 0.1
		n=$(pdfinfo "pdffile_$i.pdf" | grep -Po 'Pages:[[:space:]]+\K[[:digit:]]+')

		if [ $n -lt 1 ] || [ -z "$n" ]
		then
			echo "%%---------- BAD  --------%%, attempt $a"	
			
			if [ $a -gt 2 ]
			then
				printf '%s, %d \n' $w $n >> pageCounts.csv
			fi
			
			f="$(pwd)/pdffile_$i.pdf"
			rm $f
		else
			echo "%%---------- FINE --------%%"	
			printf '%s, %d \n' $w $n >> pageCounts.csv
			
			f="$(pwd)/pdffile_$i.pdf"
			rm $f
			
			break
		fi		
				

		
		a=$((a + 1))	
		
		#sleep 0.1
 	done

	i=$((i + 1))	
	
done


