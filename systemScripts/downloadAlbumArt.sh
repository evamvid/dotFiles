#!/usr/bin/env bash

#This script will be located at ~/Documents/ProgrammingProjects/dotFiles/lock.sh

wget $(~/Documents/ProgrammingProjects/dotFiles/systemScripts/sp art) -O /tmp/albumArt.png
convert /tmp/albumArt.png -resize 600x600 -background transparent -gravity center -extent 1366x768 /tmp/albumArt.png	
