#!/usr/bin/env bash

# Create a new HEADLESS window for screen sharing purposes if none are already running

if swaymsg -t get_outputs | grep -q HEADLESS; then
    exit 0
fi

# Remember current workspace to return to it later
original_ws=$(swaymsg -t get_workspaces --raw | jq -r ".[] | select(.focused) | .name")

swaymsg create_output
sleep 0.3
output=$(swaymsg -t get_outputs --raw | grep -oP 'HEADLESS-\d+' | head -1)
swaymsg output "$output" resolution 1920x1080

# Get the workspace that was auto-assigned to the new output
auto_ws=$(swaymsg -t get_workspaces --raw | jq -r ".[] | select(.output == \"$output\") | .name")

# Focus the HEADLESS output and switch to workspace 9
swaymsg focus output "$output"
swaymsg workspace 9

# Move the auto-assigned workspace back to DP-1
if [ "$auto_ws" != "9" ]; then
    swaymsg "[workspace=$auto_ws]" move workspace to output DP-1
fi

# Return to original workspace so wl-mirror opens there
swaymsg workspace "$original_ws"

wl-mirror "$output" &
sleep 0.3

# Move wl-mirror window to original workspace in case it opened elsewhere
swaymsg "[app_id=at.yrlf.wl_mirror]" move to workspace "$original_ws"
