#fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

#picom
picom &

#nitrogen
nitrogen --restore

#set statusbar
while true
do
#	BA=`acpi | cut -d' ' -f4`
#	DA=`date '+%a %D %H:%M'`
#	SO=`amixer get Master | sed -n '$p' | cut -d] -f1 | cut -d[ -f2`
#	LI=`xbacklight -get`
#	xsetroot -name "Vol:${SO}|Bal:${LI}%|Bat:${BA}|${DA}"
	/bin/bash ~/Script/refresh-bar.sh
	sleep 1s
done &

exec dwm
