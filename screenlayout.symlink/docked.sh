#!/bin/sh
# change DPI to match
sed -i 's/#define DPI 168/#define DPI 96/g' $HOME/.Xresources
xrdb -merge $HOME/.Xresources
xrandr --dpi 96
xrandr --output eDP1 --mode 2560x1440 --pos 3840x0 --rotate normal --output DP1 --off --output DP2-1 --mode 1920x1200 --pos 1920x0 --rotate normal --output DP2-2 --mode 1920x1200 --pos 0x0 --rotate normal --output DP2-3 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off
# restart i3
i3-msg restart
