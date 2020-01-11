#!/bin/bash

BATPATH=/sys/class/power_supply/BAT1
BAT_FULL=$BATPATH/charge_full
BAT_NOW=$BATPATH/charge_now
bf=$(cat $BAT_FULL)
bn=$(cat $BAT_NOW)
low=15
lower=7
if [ $(( 100 * $bn / $bf )) -lt $lower ]; then
    notify-send "battery is too low >:c"
elif [ $(( 100 * $bn / $bf )) -lt $low ]; then
    notify-send "battery is low"
fi
