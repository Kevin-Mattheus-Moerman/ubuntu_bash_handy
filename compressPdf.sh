FILES=/mnt/data/Privat/CV/2018_12/*
for file in $FILES
do	
extension="${file##*.}"                     # get the extension
filename="${file%.*}"                       # get the filename
filenameNew="${filename}_temp.pdf"
filename="${filename}.pdf"

#mv "$file" "$filenameNew"    # rename file by moving it

 gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dBATCH  -dQUIET -sOutputFile=$filenameNew $filename
 
done
