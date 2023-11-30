#!/bin/bash

acpi_query=$(acpi -b | grep -v "unavailable" | grep "Battery")

battery_status=$(echo ${acpi_query} | awk -F'[,:%]' '{print $2}' | cut -c2-)
battery_level=$(echo ${acpi_query} | awk -F'[,:%]' '{print $3}' | cut -c2-)

if [ "${battery_status}" = "Charging" ]; then
    battery_symbol=󰂄;
elif [ "${battery_level}" -ge "100" ]; then
    battery_symbol=󰁹;
elif [ "${battery_level}" -ge "90" ]; then
    battery_symbol=󰂂;
elif [ "${battery_level}" -ge "80" ]; then
    battery_symbol=󰂁;
elif [ "${battery_level}" -ge "70" ]; then
    battery_symbol=󰂀;
elif [ "${battery_level}" -ge "60" ]; then
    battery_symbol=󰁿;
elif [ "${battery_level}" -ge "50" ]; then
    battery_symbol=󰁾;
elif [ "${battery_level}" -ge "40" ]; then
    battery_symbol=󰁽;
elif [ "${battery_level}" -ge "30" ]; then
    battery_symbol=󰁼;
elif [ "${battery_level}" -ge "20" ]; then
    battery_symbol=󰁻;
elif [ "${battery_level}" -ge "10" ]; then
    battery_symbol=󰁺;
elif [ "${battery_level}" -lt "10" ]; then
    battery_symbol=󰂃;
fi

echo -n ${battery_symbol}

