ref: https://unix.stackexchange.com/questions/448811/how-to-export-a-gnome-terminal-profile

You can use dconf(1) to dump and load the gnome-terminal profiles. I got the basic command usage from this source:

https://gist.github.com/reavon/0bbe99150810baa5623e5f601aa93afc

To export all of your gnome-terminal profiles from one system, and then load them on another, you would issue the following:

source system:

```
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf
```

destination system (after transferring the gnome-terminal-profiles.dconf file):

```
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
```
