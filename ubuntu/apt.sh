#!/usr/bin/env bash

PACKAGES=(
    bat
    btop
    cloc
    direnv
    eza
    git
    gnuplot
    htop
    just
    jq
    net-tools
    neovim
    protobuf
    protoc-gen-go
    ripgrep
    ssh
    tmux
    wget
)

sudo apt install -y ${PACKAGES[@]}

sudo ufw allow 22
