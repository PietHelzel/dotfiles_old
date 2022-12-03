#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar top -c ~/.config/polybar/config.ini &
polybar title -c ~/.config/polybar/config.ini &
polybar audio -c ~/.config/polybar/config.ini &
polybar memory -c ~/.config/polybar/config.ini &
polybar cpu -c ~/.config/polybar/config.ini &
polybar capsnum -c ~/.config/polybar/config.ini &
polybar packages -c ~/.config/polybar/config.ini &
#polybar cava -c ~/.config/polybar/config.ini &
