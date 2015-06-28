#!/bin/sh
xrdb -merge $HOME/.Xresources
xrandr --dpi 96
xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --mode 1920x1200 --pos 0x0 --rotate normal --output eDP1 --mode 2560x1440 --pos 1920x0 --rotate normal --output DP2 --off
