#!/usr/bin/env bash

defaults write -g ApplePressAndHoldEnabled -bool false

brew update

FORMULAE=(
    cloc
    coreutils
    docker-compose
    doctl
    exa
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
    gpg
    graphviz
    grep
    htop
    jq
    kubernetes-cli
    kubectx
    mariadb
    protobuf
    protoc-gen-go
    pyenv
    pyenv-virtualenv
    ripgrep
    tmux
    watch
    wget
)

brew install ${FORMULAE[@]}

CASKS=(
    audacity
    docker
    flux
    iterm2
    kdiff3
    ngrok
    spotify
    steam
    sublime-text
    visual-studio-code
    wireshark
)

brew install --cask ${CASKS[@]}

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
