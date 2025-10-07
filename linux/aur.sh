#!/usr/bin/env bash

mkdir -p $HOME/local/aur
pushd $HOME/local/aur > /dev/null

PACKAGES=(
    https://aur.archlinux.org/1password
    https://aur.archlinux.org/discord_arch_electron
    https://aur.archlinux.org/obsidian
    https://aur.archlinux.org/slack-desktop
    https://aur.archlinux.org/spotify
    https://aur.archlinux.org/visual-studio-code-bin
)

for PACKAGE in ${PACKAGES[@]}; do
    git clone $PACKAGE
    FOLDER="${PACKAGE##*/}"
    pushd $FOLDER > /dev/null
    makepkg -si --skippgpcheck --noconfirm
    popd > /dev/null
done

popd > /dev/null
