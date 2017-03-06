#!/bin/bash
icon=~/Images/lock.png
screenshot=~/Images/lockscreen.png
resolution=2560x1440

ffmpeg -f x11grab -video_size $resolution -y -i $DISPLAY -i $icon -filter_complex "boxblur=1:5,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $screenshot -loglevel quiet

i3lock -u -i $screenshot