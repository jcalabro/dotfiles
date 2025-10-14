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
    yubikey-manager
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

sudo systemctl enable --now keyd docker pcscd
sudo usermod -aG docker jcalabro
