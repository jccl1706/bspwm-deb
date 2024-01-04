#!/usr/bin/env sh

# run polybar
pkill polybar && sleep 1
polybar -c ~/.config/polybar/config.ini &

