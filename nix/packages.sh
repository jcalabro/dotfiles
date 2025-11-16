#!/usr/bin/env bash

PACKAGES=(
    awscli2
    bat
    bpftools
    bore
    btop
    c3c
    clang
    cloc
    difftastic
    direnv
    dogdns
    dust
    dwarfdump
    dysk
    eksctl
    etcd
    eza
    fd
    flyctl
    gnuplot
    google-cloud-sdk
    go
    gopls
    htop
    httpie
    jq
    just
    kafkactl
    kubectl
    kubectx
    kubernetes-helm
    less
    lldb
    helix
    mtr
    netcat-gnu
    neovim
    odin
    oha
    postgresql_17
    protobuf
    rbenv
    redis
    ripgrep
    rsync
    samply
    talosctl
    tio
    tmux
    tree
    uv
    valgrind
    vultr-cli
    websocat
    whois
    xh
    xorg.xrandr
    xorg.xset
    yarn
)

for PKG in ${PACKAGES[@]}; do
    nix-env -iA nixpkgs.$PKG
done

# to remove: `nix-env --query`, then `nix-env -e protoc-gen-go`
