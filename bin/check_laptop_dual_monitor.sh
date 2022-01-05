#!/bin/bash
# set up the two monitors for bspwm
# NOTE This is a simplistic approach because I already know the settings I
# want to apply.
my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-1-2')
if [[ $my_laptop_external_monitor = *connected* ]]; then
bash $HOME/.screenlayout/multimon.sh
#xrandr --output HDMI-1-2 --primary --mode 1920x1080 --rotate normal --output eDP-1 --mode 1920x1080 --rotate normal --left-of HDMI-1-2
fi
