# Downsampling images in a folder
This requires `imagemagick`
```
sudo apt-get install imagemagick
```

Using `mogrify` the original files are overwritten. Here are several examples:

```
mogrify -resize 50% *.png      # keep image aspect ratio
mogrify -resize 320x240 *.png  # keep image aspect ratio
mogrify -resize 320x240! *.png # don't keep image aspect ratio
mogrify -resize x240 *.png     # don't keep image aspect ratio
mogrify -resize 320x *.png     # don't keep image aspect ratio
```

# Sources/References
https://askubuntu.com/questions/1164/how-to-easily-resize-images-via-command-line
