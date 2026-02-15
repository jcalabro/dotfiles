#!/usr/bin/env bash

PACKAGES=(
    bind
    blueman
    brightnessctl
    chromium
    discord
    docker
    docker-compose
    firefox
    ghostty
    git-lfs
    grim
    keyd
    man
    net-tools
    nvm
    obsidian
    pipewire
    playerctl
    pulumi
    signal-desktop
    slurp
    sway
    swaybg
    swayidle
    swaylock
    tailscale
    ttf-nerd-fonts-symbols
    ttf-nerd-fonts-symbols-mono
    waybar
    wf-recorder
    wireplumber
    wireshark-cli
    wireshark-qt
    wl-clipboard
    wl-mirror
    wmenu
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    yubikey-manager
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}

sudo systemctl enable --now keyd docker pcscd
sudo usermod -aG docker jcalabro

source /usr/share/nvm/init-nvm.sh
