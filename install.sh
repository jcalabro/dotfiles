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

    mkdir -p $HOME/.git/hooks
    ln -sf $DOTFILE_BASE/git/pre-commit $HOME/.git/hooks/pre-commit
    git config --global core.hooksPath $HOME/.git/hooks

    #
    # Vim
    #
    ln -sf $DOTFILE_BASE/vim/vimrc       $HOME/.vimrc
    ln -sf $DOTFILE_BASE/vim/vim_plugins $HOME/.vim_plugins

    mkdir -p $HOME/.vim
    ln -sf $DOTFILE_BASE/vim/coc-settings.json $HOME/.vim/coc-settings.json

    mkdir -p $HOME/.config/nvim/lua
    ln -sf $DOTFILE_BASE/vim/init.vim $HOME/.config/nvim/init.vim
    ln -sf $DOTFILE_BASE/vim/config.lua $HOME/.config/nvim/lua/config.lua
    ln -sf $DOTFILE_BASE/vim/coc-settings.json $HOME/.config/nvim/coc-settings.json
    ln -sf $DOTFILE_BASE/vim/zls.json $HOME/.config/zls.json
    if [ "$(uname)" == "Darwin" ]; then
        ln -sf $DOTFILE_BASE/vim/zls.json "$HOME/Library/Application Support/zls.json"
    fi

    #
    # tmux
    #
    ln -sf $DOTFILE_BASE/tmux/tmux.conf $HOME/.tmux.conf

    #
    # helix
    #
    ln -sf $DOTFILE_BASE/helix/config.toml $HOME/.config/helix/config.toml
    ln -sf $DOTFILE_BASE/helix/languages.toml $HOME/.config/helix/languages.toml
    mkdir -p $HOME/.config/helix/themes
    ln -sf $DOTFILE_BASE/helix/jim_nord_night.toml $HOME/.config/helix/themes/jim_nord_night.toml

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

    #
    # Alacritty (make a local copy)
    #
    mkdir -p $HOME/.config/alacritty
    cp $DOTFILE_BASE/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

    #
    # Ghostty (make a local copy)
    #
    mkdir -p $HOME/.config/ghostty
    cp $DOTFILE_BASE/ghostty/config $HOME/.config/ghostty/config

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
