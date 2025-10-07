#!/usr/bin/env bash

PACKAGES=(
    ghostty
    keyd
    sway
    tailscale
    wmenu
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

sudo systemctl enable --now keyd
