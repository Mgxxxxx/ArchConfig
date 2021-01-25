#!/bin/bash

BA=`acpi | cut -d' ' -f4 | cut -d',' -f1`
DA=`date +"%F %R"`
SO=`amixer get Master | sed -n '$p' | cut -d] -f1 | cut -d[ -f2`
xsetroot -name "Vol:${SO}|Bat:${BA}|${DA}"
