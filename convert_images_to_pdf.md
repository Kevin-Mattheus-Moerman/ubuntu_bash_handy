# Converting a folder containing images to a merged pdf

## ImageMagick policy.xml file
The file is found in:
`/etc/ImageMagick-6/policy.xml`
Run
`sudo gedit policy.xml`
Comment out:
```xml
<policy domain="coder" rights="none" pattern="PDF" />
```
and change it to
```xml
  <policy domain="coder" rights="read|write" pattern="PDF" />
```	

## Converting images to a pdf
Open a terminal and run:
`convert books.png books.jpeg combined.pdf`

To convert all `png` and `jpg` files in a folder to a pdf use: 
`convert "*.{png,jpeg}" -quality 100 combined.pdf`

## References
https://askubuntu.com/questions/493584/convert-images-to-pdf
https://unix.stackexchange.com/questions/364711/shell-script-to-convert-pdf-to-images-and-save-in-sub-folder
https://unix.stackexchange.com/questions/66451/run-a-command-on-all-subfolders


