i3-msg 'workspace number 4'
i3-msg "exec --no-startup-id urxvt -hold -e ranger"
i3-msg "split horizontal"
i3-msg "exec --no-startup-id urxvt -hold -e ncmpcpp"
sleep 1
i3-msg "split vertical"
i3-msg "exec --no-startup-id urxvt -hold -e cava"
sleep 1
