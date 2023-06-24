#!/bin/sh

if iwctl station wlan0 show | grep -q connected; then
    icon=""
    ssid=$(nmcli -t -f name,device connection show --active | grep wlan0 | cut -d\: -f1)
    status="Connected to ${ssid}"
else
    icon=""
    status="offline"
fi

echo $(jq -n "{\"icon\": \"${icon}\", \"status\": \"${status}\"}")
