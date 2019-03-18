#!/bin/bash
screen_w=$(tput cols)   # Get screen width.
screen_h=$(tput lines)  # Get screen height.
str=$*                  # String to put in corner.
string_w=${#str}
let "x = $screen_w - $string_w"

tput sc               # Save current position
tput cup $screen_h $x # Move to corner
echo -ne $str         # Put string in the corner
tput rc               # Go back to saved position.
echo " >"             # Some kind of prompt
