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
    gnuplot
    go
    helix
    htop
    just
    jq
    mariadb
    neofetch
    neovim
    protobuf
    ripgrep
    strace
    tmux
    wget
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}
