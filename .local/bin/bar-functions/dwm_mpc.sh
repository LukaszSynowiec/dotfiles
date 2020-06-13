#!/bin/sh

# A dwm_bar function that shows the current artist, track, position, duration, and status from mpc
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: mpc

dwm_mpc () {
    if ps -C mpd > /dev/null; then
        ARTIST=$(mpc current -f %artist%)
        TRACK=$(mpc current -f %title%)
        STATUS=$(mpc status | sed -n 2p | awk '{print $1;}')

            if [ "$STATUS" = "[playing]" ]; then
                STATUS="PLA:"
            else
                STATUS="PAU:"
            fi
        
        printf "%s%s%s - %s%s" "$SEP1" "$STATUS" "$ARTIST" "$TRACK" "$SEP2"
    fi
}

dwm_mpc
