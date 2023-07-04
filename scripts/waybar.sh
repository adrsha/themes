#!/bin/bash
if [[ $1 != "code" ]];then
  ln -sf ~/Themes/waybar/$1 ~/.config/waybar/style.css
  killall waybar; nohup waybar &
else
  killall waybar
fi
