#!/usr/bin/env bash

PACKAGES=(
    bat
    btop
    cloc
    cmake
    curl
    direnv
    dsniff
    etcd-client
    eza
    git
    gnuplot
    htop
    just
    jq
    libssl-dev
    ncal
    net-tools
    neovim
    ripgrep
    ssh
    tmux
    wget
    whois
)

sudo apt install -y ${PACKAGES[@]}

sudo ufw allow 22

# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# curl -L https://github.com/marler8997/zigup/releases/latest/download/zigup-x86_64-linux.tar.gz | tar xz
