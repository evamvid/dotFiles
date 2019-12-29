#!/usr/bin/env bash

#This script will be located at ~/Documents/ProgrammingProjects/dotFiles/lock.sh

STATUS=$(~/Documents/ProgrammingProjects/dotFiles/systemScripts/sp | grep Error)

if [[ ! $STATUS ]]; then
	i3lock --blur=15 --indicator --ringcolor=9EA7A6FF --line-uses-inside --keyhlcolor=2A5491FF --bshlcolor=A03B1EFF --insidevercolor=232C31FF --insidewrongcolor=A03B1Eff --ringvercolor=9EA7A6FF --ringwrongcolor=3F4944FF --separatorcolor=2A5491FF --verifcolor=FFFFFFFF --wrongcolor=232C31FF -i /tmp/albumArt.png
fi
if [[ $STATUS ]]; then 
	i3lock --blur=15 --clock --indicator --insidecolor=232C31FF --ringcolor=9EA7A6FF --line-uses-inside --keyhlcolor=2A5491FF --bshlcolor=A03B1EFF --insidevercolor=232C31FF --insidewrongcolor=A03B1Eff --ringvercolor=9EA7A6FF --ringwrongcolor=3F4944FF --separatorcolor=2A5491FF --verifcolor=FFFFFFFF --wrongcolor=232C31FF --timecolor=9EA7A6FF --datecolor=9EA7A6FF 
fi
