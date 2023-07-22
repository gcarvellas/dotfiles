#!/bin/bash

acpi_query=$(acpi -b | grep "Battery 0")

battery_level=$(echo ${acpi_query} | awk -F'[,:%]' '{print $3}' | cut -c2-)

echo -n ${battery_level}%

