#!/bin/bash

if pgrep -x ghostty > /dev/null; then
    # Ghostty is running, tell it to open a new window
    osascript <<EOF
tell application "Ghostty"
    activate
    tell application "System Events" to keystroke "n" using command down
end tell
EOF
else
    # Ghostty is not running, launch it
    open -a "Ghostty"
fi
