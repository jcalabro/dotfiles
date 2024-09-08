#!/usr/bin/env bash

PACKAGES=(
    bat
    cloc
    difftastic
    direnv
    eza
    gnuplot
    go
    helix
    htop
    just
    jq
    mariadb
    neovim
    protobuf
    ripgrep
    tmux
    wget
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}
