#!/usr/bin/env bash

PACKAGES=(
    awscli2
    bat
    bore
    c3c
    clang
    dust
    dysk
    eksctl
    fd
    flyctl
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
    samply
    talosctl
    tmux
    uv
    valgrind
    vultr-cli
    websocat
    xh
    yarn
)

for PKG in ${PACKAGES[@]}; do
    nix-env -iA nixpkgs.$PKG
done

# to remove: `nix-env --query`, then `nix-env -e protoc-gen-go`
