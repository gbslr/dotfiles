#!/bin/bash

# script for mute keybind in native vesktop from xwayland apps
#thanks to github.com/Marty42780 for the one-liner to grab focus

XORG=$(hyprctl activewindow | grep -oP 'xwayland: \K\d') #store xwayland status of focused

if [[ "$XORG" == "1" ]]; then
	echo "running under xorg"
	hyprctl dispatch focuswindow class:vesktop && hyprctl dispatch sendshortcut CONTROL SHIFT, M, class:vesktop && hyprctl dispatch focuscurrentorlast
else
	echo "running under native"
	hyprctl dispatch sendshortcut, CTRL_SHIFT, M, class:vesktop
fi
