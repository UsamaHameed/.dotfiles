i3-msg "workspace 1; append_layout /home/usama/.config/i3/workspace-1.json"

firefox & disown
gnome-terminal

sleep 3

i3-msg "workspace 2; append_layout /home/usama/.config/i3/workspace-2.json"

thunderbird & disown

sleep 3
exec google-chrome &>/dev/null & disown
