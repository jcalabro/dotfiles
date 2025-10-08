#!/usr/bin/env bash

PACKAGES=(
    bind
    blueman
    brightnessctl
    docker
    docker-compose
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
    waybar
    wl-clipboard
    wmenu
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

sudo systemctl enable --now keyd
sudo systemctl enable --now docker
sudo usermod -aG docker jcalabro
