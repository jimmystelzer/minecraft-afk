#!/bin/bash
(sleep 5 && xdotool mousedown --window `xwininfo -tree -root | grep -e "(\"Minecraft [0-9]\+[-.a-z0-9]\+\" \"Minecraft [0-9]\+[-.a-z0-9]\+\")" | awk '{printf $1}'` 3) &
