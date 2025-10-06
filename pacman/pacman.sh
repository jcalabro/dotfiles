#!/usr/bin/env bash

PACKAGES=(
    ghostty
    keyd
    sway
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

sudo systemctl enable --now keyd
