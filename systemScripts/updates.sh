#!/usr/bin/env bash
COMMUNITY=$(pacman -Qu)
COMMUNITY=$(printf %s "$COMMUNITY" | wc -l)
AUR=$(yay -Qu)
AUR=$(printf %s "$AUR" | wc -l)
AUR=$((AUR - COMMUNITY))
echo "P:$COMMUNITY" "A:$AUR"
