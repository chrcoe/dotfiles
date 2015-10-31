#!/bin/sh
# change DPI to match
sed -i 's/#define DPI 96/#define DPI 168/g' $HOME/.Xresources
xrdb -merge $HOME/.Xresources
xrandr --dpi 168
xrandr --output eDP1 --mode 2560x1440 --pos 0x0 --rotate normal --output DP1 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off
# restart i3
i3-msg restart
