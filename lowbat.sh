#!/bin/bash

ACPATH=/sys/class/power_supply/ACAD
BATPATH=/sys/class/power_supply/BAT1
AC=$ACPATH/online
BAT_FULL=$BATPATH/charge_full
BAT_NOW=$BATPATH/charge_now
bf=$(cat $BAT_FULL)
bn=$(cat $BAT_NOW)
ac=$(cat $AC)
low=15
lower=7
if [ "$ac" = "1" ]; then
    :
elif [ $(( 100 * $bn / $bf )) -lt $lower ]; then
    notify-send "battery is too low >:c"
elif [ $(( 100 * $bn / $bf )) -lt $low ]; then
    notify-send "battery is low"
fi
