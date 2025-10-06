#!/usr/bin/env bash

PACKAGES=(
    keyd
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

systemctl enable --now keyd
