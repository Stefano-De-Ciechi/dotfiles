#!/bin/bash

wall_path=~/Pictures/hyprland/wallpapers/
anime_wall_path=$wall_path.anime/
#lock_img=~/Pictures/hyprland/lockscreen/lockscreen.png

# anime wallpapers option passed
if [[ "$#" -eq 1 ]] && [[ "$1" == "anime" ]]; then
  wall_path="$anime_wall_path"
fi

echo $wall_path
img=$(ls $wall_path | sort -R | tail -1)

echo "\$lock_img_path = $wall_path$img" > ~/.config/hypr/conf/lock_img.conf
# swww img $wall_path$img --transition-type any --transition-fps 60 --transition-step 60
swww img $wall_path$img --transition-type none    # changes background without animation
wal -i $wall_path$img -n -q -e   # generates color schemes for kitty and others
#sleep 0.2
~/.config/waybar/scripts/launch.sh    # restart waybar to refresh colors
