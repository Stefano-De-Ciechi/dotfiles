#!/bin/bash
#  __        __          _                 
#  \ \      / /_ _ _   _| |__   __ _ _ __  
#   \ \ /\ / / _` | | | | '_ \ / _` | '__| 
#    \ V  V / (_| | |_| | |_) | (_| | |    
#     \_/\_/ \__,_|\__, |_.__/ \__,_|_|    
#                  |___/                   
# ----------------------------------------------------- 

# stops all active processes called waybar and restarts it in background

killall waybar
pkill waybar
sleep 0.1

#waybar -c ~/.config/waybar/waybar.conf &
waybar -c ~/.config/waybar/config.jsonc &
#waybar &
