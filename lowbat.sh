#!/bin/bash

# path to ac and battery info
ACPATH=/sys/class/power_supply/ACAD
BATPATH=/sys/class/power_supply/BAT1

# low battery percents to send notifications at
LOW=15
LOWER=7

# battery full charge and actual charge
BAT_FULL=$BATPATH/charge_full
BAT_NOW=$BATPATH/charge_now

# actual battery percent
bat=$(( 100 * $(cat $BAT_NOW) / $(cat $BAT_FULL) ))

# is ac power supply connected
ac=$(cat $ACPATH/online)


if [ $bat -eq 100 ]; then
    notify-send "battery is full"
elif [ $ac -eq 1 ]; then
    :
elif [ $bat -lt $LOWER ]; then
    notify-send -u critical "battery is too low >:c"
elif [ $bat -lt $LOW ]; then
    notify-send "battery is low"
fi
