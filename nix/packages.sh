#!/usr/bin/env bash

PACKAGES=(
    awscli2
    bat
    bore
    c3c
    clang
    dust
    dysk
    fd
    flyctl
    go
    just
    lldb
    helix
    odin
    postgresql_17
    protobuf
    samply
    uv
    valgrind
    websocat
    xh
    yarn
)

for PKG in ${PACKAGES[@]}; do
    nix-env -iA nixpkgs.$PKG
done

# to remove: `nix-env --query`, then `nix-env -e protoc-gen-go`
