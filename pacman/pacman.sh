#!/usr/bin/env bash

PACKAGES=(
    base-devel
    bat
    btop
    cloc
    cmake
    code
    difftastic
    direnv
    dmenu
    dnsutils
    docker
    docker-buildx
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
    kdiff3
    lldb
    lldb-mi
    mysql-clients
    massif-visualizer
    netcat
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
