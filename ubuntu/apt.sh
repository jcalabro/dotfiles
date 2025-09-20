#!/usr/bin/env bash

PACKAGES=(
    ansible-core
    arping
    bat
    btop
    clangd
    cloc
    cmake
    curl
    dmenu
    direnv
    dsniff
    dwarfdump
    elfutils
    etcd-client
    eza
    fzf
    git
    gnuplot
    htop
    i3
    i3status
    i3lock
    ipmitool
    jq
    libssl-dev
    musl-dev
    musl-tools
    ncal
    net-tools
    pipenv
    pipx
    rbenv
    redis-tools
    ripgrep
    ssh
    wget
    whois
    xfce4
    xfce4-goodies
)

sudo apt update -y
sudo apt install -y ${PACKAGES[@]}

sudo ufw allow 22
sudo ufw reload

# Rust setup:
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Zig setup:
# curl -L https://github.com/marler8997/anyzig/releases/latest/download/anyzig-$(uname -m)-linux.tar.gz | tar xz && sudo mv zig /usr/local/bin

# Python setup:
# pipx install python-lsp-server
# pipx inject python-lsp-server python-lsp-ruff python-lsp-black
