#!/usr/bin/env bash

PACKAGES=(
    awscli2
    bat
    bore
    clang
    dust
    fd
    go
    just
    lldb
    helix
    postgresql_17
    samply
    uv
    valgrind
    websocat
    xh
)

for PKG in ${PACKAGES[@]}; do
    nix-env -iA nixpkgs.$PKG
done

# to remove: `nix-env -e protoc-gen-go`
