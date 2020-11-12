#!/bin/bash

BA=`acpi | cut -d' ' -f4`
DA=`date '+%a %D %H:%M'`
SO=`amixer get Master | sed -n '$p' | cut -d] -f1 | cut -d[ -f2`
LI=`xbacklight -get`
xsetroot -name "Vol:${SO}|Bal:${LI}%|Bat:${BA}|${DA}"
