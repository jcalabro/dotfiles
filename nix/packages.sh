#!/usr/bin/env bash

PACKAGES=(
    awscli2
    bat
    bore
    c3c
    clang
    difftastic
    direnv
    dust
    dysk
    eksctl
    eza
    fd
    flyctl
    gnuplot
    google-cloud-sdk
    go
    just
    kafkactl
    kubectl
    kubectx
    kubernetes-helm
    lldb
    helix
    neovim
    odin
    postgresql_17
    protobuf
    rbenv
    ripgrep
    samply
    talosctl
    tmux
    uv
    valgrind
    vultr-cli
    websocat
    xh
    xorg.xset
    yarn
)

for PKG in ${PACKAGES[@]}; do
    nix-env -iA nixpkgs.$PKG
done

# to remove: `nix-env --query`, then `nix-env -e protoc-gen-go`
