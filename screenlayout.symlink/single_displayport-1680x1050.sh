#!/bin/sh
vim $HOME/.Xresources
xrdb -merge $HOME/.Xresources
xrandr --dpi 96
xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --mode 1680x1050 --pos 0x0 --rotate normal --output eDP1 --mode 2560x1440 --pos 1680x0 --rotate normal --output DP2 --off
