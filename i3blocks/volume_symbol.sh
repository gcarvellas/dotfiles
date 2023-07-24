#/bin/bash

function get_volume {
    pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]{1,3}(?=%)' | head -1
}

function get_mute {
    pactl get-sink-mute @DEFAULT_SINK@ | grep -Po '(?<=Mute: )(yes|no)'
}

# yes if muted, no if otherwise

volume=`get_volume`
mute=`get_mute`

if [ $mute == "yes" ]; then
	volume_symbol="󰝟"
else
	if [ $volume -lt 50 ]; then
		volume_symbol=""
	else
		volume_symbol=""
	fi
fi

echo -n ${volume_symbol}

