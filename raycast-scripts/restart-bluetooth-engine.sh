#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Restart bluetooth engine
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Restart Bluetooth

# Documentation:
# @raycast.author Brendan O’leary
# @raycast.authorURL https://twitter.com/olearycrew

#blueutil -p 0 && sleep 1 && blueutil -p 1
echo "Turning off Bluetooth"

sleep 1
blueutil -p 0

echo "Bluetooth off"

sleep 3

echo "Turning Bluetooth on"
sleep 1
blueutil -p 1

echo "Bluetooth on"