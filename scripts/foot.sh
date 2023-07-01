#!/bin/bash
ln -sf ~/Themes/foot/$1 ~/.config/foot/foot.ini
nohup ~/Scripts/footrestart.sh
