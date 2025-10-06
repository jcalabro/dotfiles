#!/usr/bin/env bash

PACKAGES=(
    ghostty
    keyd
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

sudo systemctl enable --now keyd
