#!/usr/bin/env sh
# Required:
# racket, with the "slideshow" package installed
# ghostscript
# ImageMagick

OUTPUT_DIR="./output"
if [[ -d "$OUTPUT_DIR" ]]; then
  rm -r "$OUTPUT_DIR"
fi
mkdir "$OUTPUT_DIR"
# This will invoke an interactive setting, save the resulting Postscript file to this directory!
racket slides.rkt --ps -o "$OUTPUT_DIR/slides.ps"
echo "Rasterizing slides to $OUTPUT_DIR/slides-*.png"
gs -q -dAlignToPixels=0 -dTextAlphaBits=4 -dAutoRotatePages=/None -dSAFER -dBATCH -dNOPAUSE -r150 -sDEVICE=pnggray -o "$OUTPUT_DIR/slides-%d.png" -c "<</Orientation 3>> setpagedevice" -f "$OUTPUT_DIR/slides.ps"
echo "Resizing slides to XGA resolution"
mogrify -resize 1024x768 "$OUTPUT_DIR/slides*.png"
echo "Done! Run the presentation with:"
echo "mpv --fullscreen --image-display-duration=5 --playlist=playlist.m3u"
