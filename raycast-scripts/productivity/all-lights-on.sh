#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title All Lights On
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🌞

# Documentation:
# @raycast.author Brendan O'Leary
# @raycast.authorURL https://twitter.com/olearycrew

echo "Turning lights on..."
node /Users/brendan/repos/personal/keylights/index.js --allon
echo "Done"

