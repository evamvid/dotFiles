#!/usr/bin/env bash

#This script will be located at ~/Documents/ProgrammingProjects/dotFiles/lock.sh

touch /tmp/albumArt.png
wget $(~/Documents/ProgrammingProjects/dotFiles/systemScripts/sp art) -O /tmp/albumArtSmall.png
convert /tmp/albumArtSmall.png -resize 600x600 -background transparent -gravity center -extent 1366x768 /tmp/albumArt.png
rm /tmp/albumArtSmall.png
