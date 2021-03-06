#!/usr/bin/env bash

programs=""

# MPD
if [ -n "$(pgrep mpd)" ]; then
  programs="MPD\0icon\x1fmpd\n$programs"
fi

# Docker
if [ "$(sudo systemctl is-active docker.service)" == "active" ]; then
  programs="Docker\0icon\x1fkdocker\n$programs"
fi

# Timidity
if [ -n "$(pgrep timidity)" ]; then
  programs="Timidity\0icon\x1ftimidity\n$programs"
fi

# Webdav
if [ -n "$(pgrep webdav)" ]; then
  programs="Webdav\0icon\x1fnetwork-vpn\n$programs"
fi

# Transmission
if pgrep transmission-da; then
  programs="Transmission\0icon\x1ftransmission\n$programs"
fi

# Countdown
if [ -n "$(cat /tmp/timer_pid.tmp)" ]; then
  programs="Stop Timer\0icon\x1fpomodoro-stop-light\n$programs"
fi

# Unmount
if [ "$(ls -A $HOME/.mnt)" ]; then
  programs="Unmount SSH FS\0icon\x1fdrive-removable-media\n$programs"
fi

choice=$(echo -en "$programs" | rofi -dmenu -i -p "" -hide-scrollbar -width "10%" -theme "$HOME/.config/rofi/themes/launcher.rasi")

if [ -z "$choice" ];then
  exit
fi

case "$choice" in
  MPD)
    mpd --kill
    notify-send "MPD Killed"
    ;;
  Docker)
    sudo systemctl stop docker.service
    notify-send "Docker stopped"
    ;;
  Timidity)
    killall timidity
    notify-send "Timidity stopped"
    ;;
  Webdav)
    killall webdav
    notify-send "Webdav stopped"
    ;;
  Transmission)
    transmission_user=admin
    transmission-remote --auth "$transmission_user:$transmission_user" --exit
    notify-send "Transmission stopped"
    ;;
  "Stop Timer")
    kill -9 $(cat /tmp/timer_pid.tmp)
    rm /tmp/timer_*
    notify-send "Countdown stopped"
    ;;
  "Unmount SSH FS")
    $HOME/.config/rofi/bin/ssh-unmount-fs.sh
    ;;
  *)
    exit 0
    ;;
esac
