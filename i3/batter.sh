#!/bin/bash

BATTERY_STATE=$(echo "${BATTERY_INFO}" | upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full" | awk '{print $2}')
BAT=$(acpi -b | grep -E -o '[0-9][0-9][0-9]?%')
# Full and short texts
#echo "BAT $BAT"
#echo "bat: $BAT"

#foo=$(( $BAT / 10 ));

if [[ "${BATTERY_STATE}" = "discharging" ]]; then
if [[ "${BAT%?}" -eq 100 ]]; then
    echo "" 
elif [[ "${BAT%?}" -gt 85 ]]; then
    echo " ${BAT%?}%"  
elif [[ "${BAT%?}" -gt 60 ]]; then
     echo " ${BAT%?}%"
elif [[ "${BAT%?}" -gt 40 ]]; then
     echo " ${BAT%?}%"
elif [[ "${BAT%?}" -gt 19 ]]; then
     echo " ${BAT%?}%"
elif [[ "${BAT%?}" -le 19 ]]; then
notify-send --urgency=critical "Hay, User!" "Plug the fuc**ng Charger !!!" -i $(echo info)
     echo " ${BAT%?}%"
else
    echo " ${BAT%?}%"
fi 
else
if [[ "${BAT%?}" -eq 100 ]]; then
notify-send --urgency=normal --expire-time=2 "Hello, User!"   "The Battery is Full !!!"  -i $(echo info)
    echo " " 
elif [[ "${BAT%?}" -gt 85 ]]; then
    echo " ${BAT%?}%"  
elif [[ "${BAT%?}" -gt 60 ]]; then
     echo " ${BAT%?}%"
elif [[ "${BAT%?}" -gt 40 ]]; then
     echo " ${BAT%?}%"
elif [[ "${BAT%?}" -gt 19 ]]; then
     echo " ${BAT%?}%"
elif [[ "${BAT%?}" -le 19 ]]; then
     echo " ${BAT%?}%"
else
    echo " ${BAT%?}%"
fi 
fi


# Set different color for battery percentage and BAT spelling/ will go from green to red

[ ${BAT%?} -le 20 ] && echo "#FF0000"
[ ${BAT%?} -le 21 ] && echo "#ff6a00"
[ ${BAT%?} -le 22 ] && echo "#ff6f00"
[ ${BAT%?} -le 23 ] && echo "#ff7300"
[ ${BAT%?} -le 24 ] && echo "#ff7700"
[ ${BAT%?} -le 25 ] && echo "#ff7b00"
[ ${BAT%?} -le 26 ] && echo "#ff8000"
[ ${BAT%?} -le 27 ] && echo "#ff8400"
[ ${BAT%?} -le 28 ] && echo "#ff8800"
[ ${BAT%?} -le 29 ] && echo "#ff8c00"
[ ${BAT%?} -le 30 ] && echo "#ff9100"
[ ${BAT%?} -le 31 ] && echo "#ff9500"
[ ${BAT%?} -le 32 ] && echo "#ff9900"
[ ${BAT%?} -le 33 ] && echo "#ff9d00"
[ ${BAT%?} -le 34 ] && echo "#ffa200"
[ ${BAT%?} -le 35 ] && echo "#ffa600"
[ ${BAT%?} -le 36 ] && echo "#ffaa00"
[ ${BAT%?} -le 37 ] && echo "#ffae00"
[ ${BAT%?} -le 38 ] && echo "#ffb300"
[ ${BAT%?} -le 39 ] && echo "#ffb700"
[ ${BAT%?} -le 40 ] && echo "#ffbb00"
[ ${BAT%?} -le 41 ] && echo "#ffbf00"
[ ${BAT%?} -le 42 ] && echo "#ffc400"
[ ${BAT%?} -le 43 ] && echo "#ffc800"
[ ${BAT%?} -le 44 ] && echo "#ffcc00"
[ ${BAT%?} -le 45 ] && echo "#ffd000"
[ ${BAT%?} -le 46 ] && echo "#ffd500"
[ ${BAT%?} -le 47 ] && echo "#ffd900"
[ ${BAT%?} -le 48 ] && echo "#ffdd00"
[ ${BAT%?} -le 49 ] && echo "#ffe100"
[ ${BAT%?} -le 50 ] && echo "#ffe600"
[ ${BAT%?} -le 51 ] && echo "#ffea00"
[ ${BAT%?} -le 52 ] && echo "#ffee00"
[ ${BAT%?} -le 53 ] && echo "#fff200"
[ ${BAT%?} -le 54 ] && echo "#fff700"
[ ${BAT%?} -le 55 ] && echo "#fffb00"
[ ${BAT%?} -le 56 ] && echo "#ffff00"
[ ${BAT%?} -le 57 ] && echo "#fbff00"
[ ${BAT%?} -le 58 ] && echo "#f6ff00"
[ ${BAT%?} -le 59 ] && echo "#f2ff00"
[ ${BAT%?} -le 60 ] && echo "#eeff00"
[ ${BAT%?} -le 61 ] && echo "#eaff00"
[ ${BAT%?} -le 62 ] && echo "#e5ff00"
[ ${BAT%?} -le 63 ] && echo "#e1ff00"
[ ${BAT%?} -le 64 ] && echo "#ddff00"
[ ${BAT%?} -le 65 ] && echo "#d9ff00"
[ ${BAT%?} -le 66 ] && echo "#d4ff00"
[ ${BAT%?} -le 67 ] && echo "#d0ff00"
[ ${BAT%?} -le 68 ] && echo "#ccff00"
[ ${BAT%?} -le 69 ] && echo "#c8ff00"
[ ${BAT%?} -le 70 ] && echo "#c3ff00"
[ ${BAT%?} -le 71 ] && echo "#bfff00"
[ ${BAT%?} -le 72 ] && echo "#bbff00"
[ ${BAT%?} -le 73 ] && echo "#b7ff00"
[ ${BAT%?} -le 74 ] && echo "#b3ff00"
[ ${BAT%?} -le 75 ] && echo "#aeff00"
[ ${BAT%?} -le 76 ] && echo "#aaff00"
[ ${BAT%?} -le 77 ] && echo "#a6ff00"
[ ${BAT%?} -le 78 ] && echo "#a2ff00"
[ ${BAT%?} -le 79 ] && echo "#9dff00"
[ ${BAT%?} -le 80 ] && echo "#99ff00"
[ ${BAT%?} -le 81 ] && echo "#95ff00"
[ ${BAT%?} -le 82 ] && echo "#91ff00"
[ ${BAT%?} -le 83 ] && echo "#8cff00"
[ ${BAT%?} -le 84 ] && echo "#88ff00"
[ ${BAT%?} -le 85 ] && echo "#84ff00"
[ ${BAT%?} -le 86 ] && echo "#80ff00"
[ ${BAT%?} -le 87 ] && echo "#7bff00"
[ ${BAT%?} -le 88 ] && echo "#77ff00"
[ ${BAT%?} -le 89 ] && echo "#73ff00"
[ ${BAT%?} -le 90 ] && echo "#6fff00"
[ ${BAT%?} -le 91 ] && echo "#6aff00"
[ ${BAT%?} -le 92 ] && echo "#66ff00"
[ ${BAT%?} -le 93 ] && echo "#62ff00"
[ ${BAT%?} -le 94 ] && echo "#5eff00"
[ ${BAT%?} -le 95 ] && echo "#55ff00"
[ ${BAT%?} -le 96 ] && echo "#51ff00"
[ ${BAT%?} -le 97 ] && echo "#4dff00"
[ ${BAT%?} -le 98 ] && echo "#48ff00"
[ ${BAT%?} -le 99 ] && echo "#44ff00"
[ ${BAT%?} -le 100 ] && echo "#00ff00"
[ ${BAT%?} -le 101 ] && echo "#00ff00"

[ ${BAT%?} -le 15 ] && exit 33
exit 0
