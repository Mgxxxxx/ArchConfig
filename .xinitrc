#fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx &

#nitrogen
nitrogen --restore

#picom
picom &

#禁用触摸板
xinput disable 14

#挂载windows
#sudo mount /dev/nvme0n1p3 /mnt/win

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
