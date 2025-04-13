#!/usr/bin/env bash

PACKAGES=(
    buf
    fd
    go
    just
    protoc-gen-go
    protoc-gen-connect-go
    helix
    uv
)

for PKG in ${PACKAGES[@]}; do
    nix-env -iA nixpkgs.$PKG
done
