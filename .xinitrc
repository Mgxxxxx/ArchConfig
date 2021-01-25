#fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

#nitrogen
nitrogen --restore

#picom
picom &

#fcitx
fcitx &

#BA=`acpi | cut -d' ' -f4 | cut -d',' -f1`
#SO=`amixer get Master | sed -n '$p' | cut -d']' -f1 | cut -d'[' -f2`
#while true; do
#   xsetroot -name "Vol:${SO}|Bat:${BA}|$( date +"%F %R" )"
#   xsetroot -name "Bat:$(acpi | cut -d' ' -f4)|$( date +"%F %R" )"
#   sleep 1s    # Update time every minute

while true; do
	~/Desktop/Script/refresh-bar.sh
	sleep 100ms
done &

exec dwm
