# Monitor output
if xrandr -q | grep 'HDMI-1 connected'; then
	#xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-2 --off
	xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --mode 1920x1200 --pos 0x0 --rotate normal --output DP-2 --off
else
	xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off
fi

# Wallpaper
# ps -ef | grep dwall | grep -v grep | awk '{print $2}' | xargs kill
# dwall -s=$(ls /usr/share/dynamic-wallpaper/images | sort -R | head -1) &
hsetroot -cover "$HOME/Pictures/wallpapers/$(ls $HOME/Pictures/wallpapers | sort -R | head -1)" # set random wallpaper from folder

# Polybar
$HOME/.config/polybar/launch.sh

# Picom
if ps -A | grep -q picom; then
	killall -q picom
fi

picom -b

# Conky
if ps -A | grep -q conky; then
	killall -q conky
fi

conky -q -d