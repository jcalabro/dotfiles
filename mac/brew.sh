#!/usr/bin/env bash

defaults write -g ApplePressAndHoldEnabled -bool false

brew tap homebrew/core
brew tap anyzig/tap
brew update

# setup LFS
brew install git-lfs
git lfs install

FORMULAE=(
    anyzig
    bat
    bash # be sure to change the shell by editing /etc/shells, then chsh. Confirm with echo $SHELL
    bandwhich
    btop
    cloc
    cocoapods
    coreutils
    difftastic
    direnv
    docker-compose
    doctl
    dust
    eza
    emscripten
    fd
    findutils
    flyctl
    gawk
    gdb
    gnuplot
    gnutls
    gnu-tar
    gnu-sed
    gnu-indent
    gnu-getopt
    go
    google-cloud-sdk
    gpg
    graphviz
    grpcurl
    grep
    helix
    htop
    hyperfine
    iina
    just
    jq
    kubernetes-cli
    kubectx
    llvm
    mysql
    neovim
    nmap
    postgresql
    protobuf
    protoc-gen-go
    pulumi/tap/pulumi
    pyenv
    pyenv-virtualenv
    ripgrep
    siderolabs/tap/talosctl
    scroll-reverser
    tailscale
    tio
    tracy
    tmux
    watch
    wget
    xh
    ykman
    zigup
)

brew install ${FORMULAE[@]}

CASKS=(
    1password
    alacritty
    audacity
    balenaetcher
    caffeine
    discord
    docker
    flux
    google-chrome
    iterm2
    kdiff3
    keymapp
    nikitabobko/tap/aerospace
    obsidian
    postman
    slack
    spotify
    sublime-text
    visual-studio-code
    wireshark
    zed
)

brew install --cask ${CASKS[@]}

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

go install github.com/lasorda/protobuf-language-server@latest
go install github.com/shivakar/quickserve@latest
go install github.com/presbrey/cmd/ss@latest
