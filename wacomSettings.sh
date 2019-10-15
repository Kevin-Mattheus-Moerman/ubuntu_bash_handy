#!/bin/sh

DEVICE="Wacom Intuos2 6x8 Pen"

STYLUS="$DEVICE stylus"
ERASER="$DEVICE eraser"
CURSOR="$DEVICE cursor"

xsetwacom set "$STYLUS" Threshold 50
xsetwacom set "$ERASER" Threshold 50
xsetwacom set "$CURSOR" Threshold 50
