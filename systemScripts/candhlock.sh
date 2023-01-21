#!/bin/sh

#adapted from https://github.com/lokesh-krishna/dotfiles

i3lock --nofork                 \
    --ignore-empty-password	\
    --linecolor=00000000        \
    --keyhlcolor=ebcb8b00       \
    --bshlcolor=d8dee900	\
    --separatorcolor=00000000   \
    --radius=0			\
    --indpos="1475:900"		\
    \
    --insidevercolor=00000000	\
    --insidewrongcolor=00000000 \
    --insidecolor=00000000	\
    \
    --ringcolor=e59d1700        \
    --ringvercolor=a3be8c00     \
    --ringwrongcolor=bf616a00   \
    \
    --clock			\
    --timecolor=eceff4ff	\
    --timestr="%I:%M %p"	\
    --time-font="Calvin and Hobbes"	\
    --timesize=125		\
    --timepos="1425:900"		\
    --timecolor=2e3440ff	\
    \
    --datecolor=d8dee9ff	\
    --datestr="%A, %d %B"	\
    --datecolor=2e3440ff	\
    --date-font="Calvin and Hobbes"	\
    --datesize=95		\
    --datepos="tx:1025"	\
    \
    --veriftext="Verifying..."		\
    --wrongtext="Wrong!"		\
    --verif-font="Calvin and Hobbes" \
    --wrong-font="Calvin and Hobbes" \
    --verifsize=95 \
    --wrongsize=95 \
    \
    --keylayout=2 \
    --layoutsize=40 \
    --layoutpos="1800:75" \
    --layout-font="Calvin and Hobbes" \
    \
    --indicator			\
    \
    --image=/home/evamvid/Documents/ProgrammingProjects/dotFiles/lock-wallpaper.png

