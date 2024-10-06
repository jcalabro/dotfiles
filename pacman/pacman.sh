#!/usr/bin/env bash

PACKAGES=(
    base-devel
    bat
    btop
    cloc
    code
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
    lldb
    mariadb
    massif-visualizer
    net-tools
    neofetch
    neovim
    libdwarf
    playerctl
    protobuf
    ripgrep
    strace
    tmux
    valgrind
    wget
    whois
)

sudo pacman -Sy --noconfirm ${PACKAGES[@]}
