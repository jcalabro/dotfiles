#!/usr/bin/env bash

PACKAGES=(
    bat
    cloc
    coreutils
    difftastic
    direnv
    eza
    gnuplot
    go
    helix
    htop
    hyperfine
    just
    jq
    mariadb
    neovim
    playerctl
    postgresql
    protobuf
    protoc-gen-go
    ripgrep
    tmux
    wget
)

sudo dnf install -y ${PACKAGES[@]}

go install honnef.co/go/gotraceui/cmd/gotraceui@latest
