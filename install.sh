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
    ln -sf $DOTFILE_BASE/bash/bash_w    $HOME/.bash_w

    #
    # Linux config
    #
    if [ "$(uname)" == "Linux" ]; then
        sudo rm -f /etc/sudoers.d/ykman
        sudo ln -sf $DOTFILE_BASE/linux/ykman /etc/sudoers.d/ykman
        sudo chown root:root /etc/sudoers.d/ykman
    fi

    #
    # Nix
    #
    mkdir -p $HOME/.config/nix
    ln -sf $DOTFILE_BASE/nix/nix.conf $HOME/.config/nix/nix.conf

    #
    # i3
    #
    mkdir -p $HOME/.config/i3
    ln -sf $DOTFILE_BASE/linux/i3_config $HOME/.config/i3/config

    #
    # Aerospace
    #
    mkdir -p $HOME/.config/aerospace
    ln -sf $DOTFILE_BASE/mac/aerospace.toml $HOME/.config/aerospace/aerospace.toml

    #
    # Yabai
    #
    mkdir -p $HOME/.config/{yabai,skhd}
    ln -sf $DOTFILE_BASE/mac/yabairc $HOME/.config/yabai
    ln -sf $DOTFILE_BASE/mac/skhdrc $HOME/.config/skhd

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
    ln -sf $DOTFILE_BASE/helix/jim_nord.toml $HOME/.config/helix/themes/jim_nord.toml

    #
    # Go
    #
    mkdir -p $HOME/.dlv
    ln -sf $DOTFILE_BASE/go/dlv-config.yml $HOME/.dlv/config.yml

    #
    # Zig
    #
    if [ "$(uname)" == "Darwin" ]; then
        ln -sf $DOTFILE_BASE/mac/zls.json $HOME/.config/zls.json
        ln -sf $DOTFILE_BASE/mac/zls.json "$HOME/Library/Application Support/zls.json"
    else
        ln -sf $DOTFILE_BASE/fedora/zls.json $HOME/.config/zls.json
    fi

    #
    # VS Code
    #
    if [ "$(uname)" == "Darwin" ]; then
        ln -sf $DOTFILE_BASE/vscode/settings.json    "$HOME/Library/Application Support/Code/User"
        ln -sf $DOTFILE_BASE/vscode/keybindings.json "$HOME/Library/Application Support/Code/User"
    fi
    if [ "$(uname)" == "Linux" ]; then
        mkdir -p "$HOME/.config/Code/User"
        ln -sf $DOTFILE_BASE/vscode/settings.json    "$HOME/.config/Code/User"
        ln -sf $DOTFILE_BASE/vscode/keybindings.json "$HOME/.config/Code/User"
    fi

    #
    # Zed
    #
    mkdir -p $HOME/.config/zed
    ln -sf $DOTFILE_BASE/zed/settings.json "$HOME/.config/zed/settings.json"
    ln -sf $DOTFILE_BASE/zed/keymap.json "$HOME/.config/zed/keymap.json"

    #
    # Alacritty (make a local copy)
    #
    mkdir -p $HOME/.config/alacritty
    cp $DOTFILE_BASE/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml

    #
    # Ghostty (make a local copy)
    #
    mkdir -p $HOME/.config/ghostty
    cp --update=none $DOTFILE_BASE/ghostty/config $HOME/.config/ghostty/config
    cp $DOTFILE_BASE/ghostty/ghostty-launcher.sh $HOME/local/bin

    #
    # TSan
    #
    ln -sf $DOTFILE_BASE/fedora/tsan-suppressions $HOME/.tsan_suppressions

    popd > /dev/null

    pushd $HOME > /dev/null
    mkdir .cargo
    touch .cargo/env
    source .bash_profile
    popd > /dev/null

    #
    # Configure git

    git config --global user.name jcalabro
    git config --global user.email jamesrcalabro@gmail.com
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
