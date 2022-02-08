#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title All Lights Off
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🕶️

# Documentation:
# @raycast.author Brendan O'Leary
# @raycast.authorURL https://twitter.com/olearycrew

echo "Turning off all lights"
node /Users/brendan/repos/personal/keylights/index.js --alloff
echo "Done"