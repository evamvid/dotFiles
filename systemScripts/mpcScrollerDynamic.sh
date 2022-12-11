#!/usr/bin/env bash

#zscroll -u true -l 30 -d 0.5 -M "mpc status" -m "paused" "-s false" -m "playing" "-s true" "mpc -f '[[%title%] // [%artist%] // \[[%date%]\] [%album%]]' current" &

zscroll -u true -l 30 -d 0.5 -M "playerctl status -p spotify" -m "paused" "-s false" -m "playing" "-s true" "playerctl metadata -p spotify --format '{{title}} // {{artist}} // {{album}}'" &

wait
