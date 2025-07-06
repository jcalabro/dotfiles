#!/usr/bin/env bash

PACKAGES=(
    ansible-core
    arping
    bat
    btop
    cloc
    cmake
    curl
    direnv
    dsniff
    dwarfdump
    etcd-client
    eza
    fzf
    git
    gnuplot
    htop
    ipmitool
    just
    jq
    libssl-dev
    musl-dev
    musl-tools
    ncal
    net-tools
    pipenv
    pipx
    rbenv
    ripgrep
    sensors
    ssh
    wget
    whois
)

sudo apt install -y ${PACKAGES[@]}

sudo ufw allow 22

# Rust setup:
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# curl -L https://github.com/marler8997/zigup/releases/latest/download/zigup-x86_64-linux.tar.gz | tar xz

# Python setup:
# pipx install python-lsp-server
# pipx inject python-lsp-server python-lsp-ruff python-lsp-black
