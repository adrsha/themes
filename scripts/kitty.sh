#!/bin/bash
ln -sf ~/Themes/kitty/$1 ~/.config/kitty/current-theme.conf
killall kitty
