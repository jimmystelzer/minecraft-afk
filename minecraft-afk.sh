#!/bin/bash
PANEL_ID=`wmctrl -l | grep -e "xfce4-panel" | awk '{print $1}'`
for I in `wmctrl -l | grep -e "Minecraft [0-9]\+[-.a-z0-9]\+" | awk '{print $1}'`; do
	xdotool mousedown --window "$I" 3
	sleep 2
	xdotool mousedown --window "$I" 3
	wmctrl -i -a $PANEL_ID
	xdotool mousedown --window "$I" 3
done
