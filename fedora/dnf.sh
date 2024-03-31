#!/usr/bin/env bash

PACKAGES=(
    bat
    cloc
    coreutils
    difftastic
    eza
    gnuplot
    go
    helix
    htop
    hyperfine
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

go install honnef.co/go/gotraceui/cmd/gotraceui@latest
