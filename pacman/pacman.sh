#!/usr/bin/env bash

PACKAGES=(
    blueman
    brightnessctl
    ghostty
    grim
    keyd
    playerctl
    sway
    swayidle
    swaylock
    tailscale
    wl-clipboard
    wmenu
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

sudo systemctl enable --now keyd
