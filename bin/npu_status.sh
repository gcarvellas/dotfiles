#!/bin/bash

NPU_BUSY_TIME_PATH="/sys/devices/pci0000:00/0000:00:0b.0/npu_busy_time_us"
SAMPLING_PERIOD=1

# Get first sample
TIME_1=$(cat "$NPU_BUSY_TIME_PATH")
SAMPLING_PERIOD=1

sleep "$SAMPLING_PERIOD"

# Get second sample
TIME_2=$(cat "$NPU_BUSY_TIME_PATH")

# Compute the difference
DELTA=$(("$TIME_2" - "$TIME_1"))
#echo "NPU busy time: $TIME_2 us"
#echo "NPU busy time delta: $DELTA us"
echo "$(( 100 * DELTA / SAMPLING_PERIOD / 1000000 ))"
