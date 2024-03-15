#!/usr/bin/env bash

defaults write -g ApplePressAndHoldEnabled -bool false

brew tap homebrew/core
brew update

FORMULAE=(
    bat
    cloc
    coreutils
    diff-so-fancy
    docker-compose
    doctl
    exa
    emscripten
    findutils
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
    grep
    helix
    htop
    jq
    kubernetes-cli
    kubectx
    mariadb
    neovim
    postgresql
    protobuf
    protoc-gen-go
    pyenv
    pyenv-virtualenv
    ripgrep
    tracy
    tmux
    watch
    wget
)

brew install ${FORMULAE[@]}

CASKS=(
    alacritty
    audacity
    docker
    flux
    iterm2
    kdiff3
    obsidian
    spotify
    sublime-text
    visual-studio-code
    wireshark
)

brew install --cask ${CASKS[@]}

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

go install honnef.co/go/gotraceui/cmd/gotraceui@latest
