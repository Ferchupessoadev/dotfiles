#!bin/bash

logout="󰗽 logout"
suspend=" suspend"
restart=" restart"
shutdown=" shutdown"

options="$logout\n$suspend\n$restart\n$shutdown"

result=$(echo -e $options | dmenu -p "Power menu" -fn "Hack Nerd Font" -nb "#2f343f" -nf "#eee" -sb "#4b5262" -sf "#fa546e")

case "$result" in
  "$logout") pkill i3;;
  "$suspend") systemctl suspend;;
  "$restart") systemctl reboot;;
  "$shutdown") systemctl poweroff;;
  *) echo "No se ha seleccionado ninguna opcion"
esac
