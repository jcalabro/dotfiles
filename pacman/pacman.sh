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
    gnuplot
    go
    helix
    htop
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
