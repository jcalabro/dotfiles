#!/usr/bin/env bash

PACKAGES=(
    bat
    buf
    bore
    clang
    dust
    fd
    go
    just
    lldb
    protoc-gen-go
    protoc-gen-connect-go
    helix
    samply
    uv
    valgrind
    xh
    yubikey-manager
)

for PKG in ${PACKAGES[@]}; do
    nix-env -iA nixpkgs.$PKG
done
