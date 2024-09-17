#!/usr/bin/env bash

PACKAGES=(
    base-devel
    bat
    btop
    cloc
    difftastic
    direnv
    dmenu
    eza
    gdb
    glib2-devel
    gnuplot
    go
    helix
    htop
    iwd
    just
    jq
    mariadb
    net-tools
    neofetch
    neovim
    libdwarf
    playerctl
    protobuf
    ripgrep
    strace
    tmux
    wget
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}
