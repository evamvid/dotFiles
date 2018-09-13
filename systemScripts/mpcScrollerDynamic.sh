#!/usr/bin/env bash

zscroll -u true -l 50 -d 0.5 -M "mpc status" -m "paused" "-s false" -m "playing" "-s true" "mpc -f '[[%title%] // [%artist%] // \[[%date%]\] [%album%]]' current" &

wait
