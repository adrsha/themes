#!/bin/bash
killall wbg
ln -sf ~/Themes/hypr/$1 ~/.config/hypr/hyprland.conf
nohup wbg ~/Pictures/walls/$1/solid.png &
