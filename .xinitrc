#!/bin/bash
#

##set monitor resolution
xrandr --output DisplayPort-0 --primary --mode 2560x1440 --rate 280

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

## my scripts folder
export PATH="$HOME/.config/.scripts:$PATH"
export PATH="$HOME/.config/bspwm/scripts:$PATH"

## set gtk theme
#export GTK_THEME='Catppuccin-Macchiato-Standard-Mauve-Dark:dark'

## start bspwm
exec bspwm
