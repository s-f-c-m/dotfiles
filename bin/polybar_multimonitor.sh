#!/bin/bash
if type "xrandr" > /dev/null; then
    while read F1 F2 _; do
        if [ "$F2" = 'connected' ]; then
            MONITOR=$F1 polybar --reload main -c ~/.config/polybar/shades/config.ini &
        fi
    done <<< $( xrandr )
else
    polybar --reload main -c ~/.config/polybar/shades/config.ini  &
fi
