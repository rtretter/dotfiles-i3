#!/bin/sh

# sensors | grep "Core 0" | awk '{gsub(/\+/,"",$3); sub(/^0/,"",$3); printf "%s%d°C\n", $3, $2}'
sensors | grep "Tctl" | awk '{print $2}' | sed 's/[^0-9.°C]//g'
