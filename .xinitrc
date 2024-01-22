#!/bin/bash
#

##set monitor resolution
#xrandr --output DisplayPort-0 --primary --mode 2560x1440 --rate 280
#xrandr --output DisplayPort-0 --primary --mode 2560x1440 --rate 280 --pos 1440x0 --rotate normal --output DisplayPort-1 --mode 2560x1440 --pos 0x0 --rotate right --output DisplayPort-2 --off --output HDMI-A-0 --off

xrandr --output DisplayPort-0 --primary --mode 2560x1440 --rate 280 --pos 1440x766 --rotate normal --output DisplayPort-1 --mode 2560x1440 --pos 0x0 --rotate right --output DisplayPort-2 --off --output HDMI-A-0 --off


[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

## my scripts folder
export PATH="$HOME/.config/.scripts:$PATH"
export PATH="$HOME/.config/bspwm/scripts:$PATH"

## set gtk theme
#export GTK_THEME='Catppuccin-Macchiato-Standard-Mauve-Dark:dark'

## start bspwm
exec bspwm
