#!/bin/sh

dwm_internet()
{
case "$(cat /sys/class/net/w*/operstate 2>/dev/null)" in
	down) wifiicon="NO WIFI" ;;
	up) wifiicon="$(awk '/^\s*w/{ print "WIFI:",int($3*100/70) "%" }' /proc/net/wireless | sed 's/ //g')" ;;
esac
    printf "%s" "$SEP1"
printf "%s%s" "$wifiicon"
    printf "%s\n" "$SEP2"
}
dwm_internet
