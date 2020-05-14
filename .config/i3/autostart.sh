#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
[[ -f ~/pics/walls/active/current/wallpaper ]] && xwallpaper --stretch ~/pics/walls/active/current/wallpaper
[[ -f ~/.config/polybar/launch.sh ]] && ~/.config/polybar/launch.sh

compton &
