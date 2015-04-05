#!/bin/bash

# toggle all cards

# card 0: HDMI
amixer -c 0 -q set IEC958 4%+ unmute
# card 1: built in/PCM
amixer -c 1 -q set Master 4%+ unmute
# card 2: Docking Station (shown as USB audio)
amixer -c 2 -q set Master 4%+ unmute
