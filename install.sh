#!/usr/bin/env bash

#
# Install these configuration files on your machine
#

function install_dotfiles {
    DOTFILE_BASE=$(pwd)

    echo Installing
    pushd $HOME/misc/dotfiles > /dev/null

    #
    # Bash scripts
    #
    ln -sf $DOTFILE_BASE/bash/bash_profile $HOME/.bash_profile
    ln -sf $DOTFILE_BASE/bash/bashrc       $HOME/.bashrc
    ln -sf $DOTFILE_BASE/bash/bash_aliases $HOME/.bash_aliases
    ln -sf $DOTFILE_BASE/bash/bash_go      $HOME/.bash_go
    ln -sf $DOTFILE_BASE/bash/bash_work    $HOME/.bash_work

    #
    # Git
    #
    ln -sf $DOTFILE_BASE/git/gitignore           $HOME/.gitignore
    ln -sf $DOTFILE_BASE/git/git-completion.bash $HOME/.git-completion.bash
    git config --global core.excludesfile $HOME/.gitignore

    #
    # Vim
    #
    ln -sf $DOTFILE_BASE/vim/vimrc       $HOME/.vimrc
    ln -sf $DOTFILE_BASE/vim/vim_plugins $HOME/.vim_plugins

    mkdir -p $HOME/.vim
    ln -sf $DOTFILE_BASE/vim/coc-settings.json $HOME/.vim/coc-settings.json

    #
    # tmux
    #
    ln -sf $DOTFILE_BASE/tmux/tmux.conf $HOME/.tmux.conf

    #
    # Go
    #
    mkdir -p $HOME/.dlv
    ln -sf $DOTFILE_BASE/go/dlv-config.yml $HOME/.dlv/config.yml

    #
    # VS Code
    #
    if [ "$(uname)" == "Darwin" ]; then
        ln -sf $DOTFILE_BASE/vscode/settings.json    "$HOME/Library/Application Support/Code/User"
        ln -sf $DOTFILE_BASE/vscode/keybindings.json "$HOME/Library/Application Support/Code/User"
    fi

    popd > /dev/null

    pushd $HOME > /dev/null
    source .bash_profile
    popd > /dev/null
}

echo -n "Are you sure (y/N)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    install_dotfiles
    echo Done
else
    echo Exiting
    return
fi
