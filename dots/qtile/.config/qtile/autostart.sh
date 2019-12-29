#!/bin/sh

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
compton &
wal --theme base16-bright &
dunst &
setxbmap us,de &