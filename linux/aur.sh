#!/usr/bin/env bash

mkdir -p $HOME/local/aur
pushd $HOME/local/aur > /dev/null

PACKAGES=(
    https://aur.archlinux.org/1password
    https://aur.archlinux.org/discord_arch_electron
    https://aur.archlinux.org/slack-desktop
    https://aur.archlinux.org/spotify
    https://aur.archlinux.org/visual-studio-code-bin
    https://aur.archlinux.org/zoom
)

for PACKAGE in ${PACKAGES[@]}; do
    git clone $PACKAGE
    FOLDER="${PACKAGE##*/}"
    pushd $FOLDER > /dev/null
    makepkg -si --skippgpcheck --noconfirm
    popd > /dev/null
done

# pinned version of fdb clients
git clone https://aur.archlinux.org/foundationdb-clients-bin.git
pushd foundationdb-clients-bin > /dev/null
git checkout acecd4c
makepkg -si --skippgpcheck --noconfirm
popd > /dev/null

popd > /dev/null
