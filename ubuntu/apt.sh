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
    wireshark
)

sudo apt update -y
sudo apt install -y ${PACKAGES[@]}

XFCE_I3_PACKAGES=(
    dmenu
    i3
    i3status
    i3lock
    libxfce4ui-2-dev
    libxfce4panel-2.0-dev
    xfce4-dev-tools
    libxfconf-0-dev
    libxfce4util-dev
    xfce4
    xfce4-dev-tools
    xfce4-goodies
    xserver-xorg-dev
    gobject-introspection
    libjson-glib-dev
    libglib2.0-dev
    gtk-doc-tools
)

sudo apt update -y
sudo apt install -y ${XFCE_I3_PACKAGES[@]}

sudo ufw allow 22
sudo ufw reload

# Rust setup:
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Zig setup:
# curl -L https://github.com/marler8997/anyzig/releases/latest/download/anyzig-$(uname -m)-linux.tar.gz | tar xz && sudo mv zig /usr/local/bin

# Python setup:
# pipx install python-lsp-server
# pipx inject python-lsp-server python-lsp-ruff python-lsp-black
