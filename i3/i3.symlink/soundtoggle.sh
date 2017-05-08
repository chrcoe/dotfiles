#!/bin/bash

# toggle all cards

# card 0: HDMI (S/PDIF..)
amixer -c 0 -q set IEC958 toggle
# card 1: builtin/PCM
amixer -c 1 -q set Master toggle
amixer -c 1 -q set Speaker 100% unmute
amixer -c 1 -q set Headphone 100% unmute
# card 2: Docking Station (shown as USB audio)
amixer -c 2 -q set Master toggle
amixer -c 2 -q set Speaker 100% ummute
amixer -c 2 -q set Headphone 100% unmute
