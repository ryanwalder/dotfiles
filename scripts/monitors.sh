#!/bin/bash
EXT1="VBOX0"
EXT2="VBOX1"

ISEXT1=`xrandr | grep $EXT1 | grep " connected "`
ISEXT2=`xrandr | grep $EXT2 | grep " connected "`

if [ -z "$ISEXT1" ] && [ -z "$ISEXT2" ]; then
    xrandr --output $INT1 --auto --output $EXT1 --off --output $EXT2 --off
elif [ -z "$ISEXT1" ] && [ ! -z "$ISEXT2" ]; then
    xrandr --output $INT1 --off --output $EXT2 --auto
elif [ ! -z "$ISEXT1" ] && [ -z "$ISEXT2" ]; then
    xrandr --output $INT1 --off --output $EXT1 --auto
elif [ ! -z "$ISEXT1" ] && [ ! -z "$ISEXT2" ]; then
    xrandr --output $EXT1 --auto
    xrandr --output $EXT2 --auto --right-of $EXT1
    xrandr --output $EXT1 --primary
fi
