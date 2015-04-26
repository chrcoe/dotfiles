#!/bin/sh
xrandr --dpi 96
xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --mode 1024x768 --pos 0x0 --rotate normal --output eDP1 --mode 2560x1440 --pos 1024x0 --rotate normal --output DP2 --off
