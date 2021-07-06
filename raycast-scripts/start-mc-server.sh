#!/bin/bash

# Dependency: It's just for me :)
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Start Minecraft
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon 🪓
# @raycast.packageName Minecraft
#
# @raycast.description Start Minecraft server
# @raycast.author Brendan O'Leary
# @raycase.authorURL https://boleary.dev

ssh brendan@192.168.3.30 docker start mc