#/bin/bash

artist=$(playerctl metadata --format "{{ artist }}")
title=$(playerctl metadata --format "{{ title }}")



if [[ ${artist} ]]; then
	output=$(echo ${artist} - ${title})
else
	output=$(echo ${title})
fi

output_len=$(echo $output | wc -c)

if [ "${output_len}"  -gt "100" ]; then
	echo ${output:0:97}...
else
	echo $output
fi
