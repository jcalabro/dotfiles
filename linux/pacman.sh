#!/usr/bin/env bash

PACKAGES=(
    blueman
    brightnessctl
    firefox
    ghostty
    grim
    keyd
    playerctl
    sway
    swaybg
    swayidle
    swaylock
    tailscale
    wl-clipboard
    wmenu
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

sudo systemctl enable --now keyd
sudo systemctl enable --now docker
sudo usermod -aG docker jcalabro
