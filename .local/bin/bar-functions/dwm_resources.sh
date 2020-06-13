#!/bin/sh

# A dwm_bar function to display information regarding system memory, CPU temperature, and storage
# Joe Standring <git@joestandring.com>
# GNU GPLv3

dwm_resources () {
    # Used and total memory
    MEMUSED=$(free -h | awk '(NR == 2) {print $3}')

    printf "%s" "$SEP1"
    printf "MEM:%s" "$MEMUSED"
    printf "%s" "$SEP2"
}

dwm_resources
