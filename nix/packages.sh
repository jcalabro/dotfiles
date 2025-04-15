#!/usr/bin/env bash

PACKAGES=(
    awscli2
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
    websocat
    xh
)

for PKG in ${PACKAGES[@]}; do
    nix-env -iA nixpkgs.$PKG
done
