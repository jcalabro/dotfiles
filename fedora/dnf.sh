#!/usr/bin/env bash

PACKAGES=(
    bat
    cloc
    coreutils
    diff-so-fancy
    exa
    gnuplot
    go
    helix
    htop
    jq
    mariadb
    neovim
    postgresql
    protobuf
    protoc-gen-go
    ripgrep
    tmux
    wget
)

sudo dnf install -y ${PACKAGES[@]}
