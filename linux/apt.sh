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
    kdiff3
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

#
# Install Tailscale
#

curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list

sudo apt update -y
sudo apt install -y tailscale
