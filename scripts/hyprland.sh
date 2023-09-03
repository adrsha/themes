#!/bin/bash
killall wbg
ln -sf ~/Themes/hypr/$1 ~/.config/hypr/hyprland.conf
nohup wbg ~/Pictures/walls/$1/solid.png &

if [[  $1 ==  "const" ]];then
    killall eww
else
    eww daemon && eww open-many visibility window
fi
