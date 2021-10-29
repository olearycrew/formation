#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Backup Obsidian
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ../images/obsidian.png
# @raycast.packageName Backup Obsidian

# Documentation:
# @raycast.author Brendan O’leary
# @raycast.authorURL https://twitter.com/olearycrew

echo "Backing up Obsidian vault"
/Users/brendan/.dotfiles/obsidian_sync.sh
echo "Vault backed up"