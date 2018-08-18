#!/bin/bash
(sleep 5 && xdotool mousedown --window `xwininfo -name "Minecraft 1.13" | grep "Window id" | awk '{printf $4}'` 3) &
