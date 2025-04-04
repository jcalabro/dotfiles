#!/usr/bin/env bash

defaults write -g ApplePressAndHoldEnabled -bool false

brew tap homebrew/core
brew update

FORMULAE=(
    bat
    bash # be sure to change the shell by editing /etc/shells, then chsh. Confirm with echo $SHELL
    cloc
    cocoapods
    coreutils
    difftastic
    direnv
    docker-compose
    doctl
    eza
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
    grpcurl
    grep
    helix
    htop
    hyperfine
    just
    jq
    kubernetes-cli
    kubectx
    llvm
    mysql
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
    flutter
    flux
    iterm2
    kdiff3
    nikitabobko/tap/aerospace
    obsidian
    postman
    spotify
    sublime-text
    visual-studio-code
    wireshark
)

brew install --cask ${CASKS[@]}

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

go install github.com/lasorda/protobuf-language-server@latest
go install github.com/shivakar/quickserve@latest
go install github.com/presbrey/cmd/ss@latest
