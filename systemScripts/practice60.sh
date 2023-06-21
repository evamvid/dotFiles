#!/bin/bash
DEVICE=$(dmesg | grep "USB HID v1.11 Device" | tail -n 1 | cut -c 57-63)
timeout 3s cat /dev/$DEVICE

