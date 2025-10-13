#!/usr/bin/env bash

PACKAGES=(
    bind
    blueman
    brightnessctl
    chromium
    docker
    docker-compose
    firefox
    ghostty
    grim
    keyd
    obsidian
    pipewire
    playerctl
    sway
    swaybg
    swayidle
    swaylock
    tailscale
    waybar
    wireplumber
    wl-clipboard
    wmenu
    xdg-desktop-portal
    xdg-desktop-portal-wlr
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

sudo systemctl enable --now keyd
sudo systemctl enable --now docker
sudo usermod -aG docker jcalabro
