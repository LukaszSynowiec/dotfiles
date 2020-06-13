#!/bin/sh

# A dwm_bar function to show the master volume of PulseAudio
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: pamixer

dwm_pulse () {
    VOL=$(pamixer --get-volume-human | tr -d '%')

    printf "%s" "$SEP1"
        if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
            printf "MUTE"
        else
            printf "VOL %s%%" "$VOL"
	fi
    printf "%s\n" "$SEP2"
}
dwm_pulse
