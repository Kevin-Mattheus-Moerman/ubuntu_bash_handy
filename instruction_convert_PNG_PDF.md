# Convert all PNG files in a folder to a single PDF

## Change a security policy for ImageMagick

Open a terminal and run:
```
sudo gedit /etc/ImageMagick-6/policy.xml` (or open it in a different editor)
```

Change the following line:
```xml
<policy domain="coder" rights="none" pattern="PDF" />
```
to
```xml
<policy domain="coder" rights="read|write" pattern="PDF" />
```
Change the file back after conversion.

## Conversion of PNG files
Open a terminal and run:
```
sudo convert *.png mydoc.pdf
```

# Sources/References
https://askubuntu.com/questions/158093/how-do-i-convert-a-png-to-pdf-with-only-the-default-packages-on-11-10   
https://askubuntu.com/questions/1081895/trouble-with-batch-conversion-of-png-to-pdf-using-convert
