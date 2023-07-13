#!/bin/sh

xrandr --output DisplayPort-1 --mode 2560x1440 --rate 75
xrandr --output HDMI-A-1 --left-of DisplayPort-1 --auto
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
picom --backend xrender &
feh --bg-fill wallpapers/sniper.png --bg-fill wallpapers/makima.jpg
systemctl --user import-environment DISPLAY
xinput set-prop "Logitech USB Receiver" "libinput Accel Speed" -1
xinput set-prop "Logitech USB Receiver" "libinput Natural Scrolling Enabled" 1
exec bspwm
