#!/bin/bash
ln -sf ~/Themes/nvim/$1 ~/.config/nvim/lua/plugins/colorscheme.lua
killall nvim
