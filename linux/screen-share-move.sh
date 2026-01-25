#!/usr/bin/env bash

# Sends the currently selected window to the highest numbered HEADLESS screen

output=$(swaymsg -t get_outputs --raw | grep -oP 'HEADLESS-\d+' | tail -1)
if [ -n "$output" ]; then
    swaymsg move to output "$output"
fi
