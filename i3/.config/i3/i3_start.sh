i3-msg "workspace 1; append_layout /home/usama/.config/i3/workspace-1.json"
# exec discord
exec google-chrome &>dev/null & disown
sleep 3

gnome-terminal
sleep 3

i3-msg "workspace 2; append_layout /home/usama/.config/i3/workspace-2.json"

exec thunderbird &>dev/null & disown
sleep 3

exec discord &>dev/null & disown
