#!/usr/bin/env bash

# Kills all HEADLESS screen sharing windows

swaymsg -t get_outputs --raw | grep -oP 'HEADLESS-\d+' | while read output; do
    swaymsg output "$output" unplug
done
