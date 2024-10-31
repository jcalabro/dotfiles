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
    docker
    docker-compose
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
    lldb-mi
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
