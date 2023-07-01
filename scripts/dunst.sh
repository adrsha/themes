#!/bin/bash
ln -sf ~/Themes/dunst/$1 ~/.config/dunst/dunstrc
killall dunst
