#!/usr/bin/env bash

PACKAGES=(
    base-devel
    bat
    btop
    cloc
    difftastic
    direnv
    dmenu
    dnsutils
    eza
    gdb
    glib2-devel
    gnuplot
    go
    graphviz
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
    whois
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}
