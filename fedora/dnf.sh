# #!/usr/bin/env bash

PACKAGES=(
    dh-autoreconf
    gcc
    glib2-devel
    gobject-introspection-devel
    gtk-doc
    json-glib-devel
    i3
    libxfce4ui-devel
    libxfce4util-devel
    meson
    ninja-build
    pkg-config
    xcb-util-devel
    @xfce-desktop-environment
    xfce4-dev-tools
    xfce4-panel-devel
)

sudo dnf install -y ${PACKAGES[@]}

#
# Install i3ipc-glib from source
#

mkdir -p ~/go/src/github.com/altdesktop
pushd ~/go/src/github.com/altdesktop > /dev/null
git clone git@github.com:altdesktop/i3ipc-glib.git || echo 'already cloned'
pushd i3ipc-glib > /dev/null

./autogen.sh --prefix=/usr
make
sudo make install

popd > /dev/null
popd > /dev/null

#
# Install xfce4-i3-workspaces-plugin from source
#

mkdir -p ~/go/src/github.com/denesb
pushd ~/go/src/github.com/denesb > /dev/null
git clone git@github.com:denesb/xfce4-i3-workspaces-plugin.git || echo 'already cloned'
pushd xfce4-i3-workspaces-plugin > /dev/null

./autogen.sh --prefix=/usr
make
sudo make install

popd > /dev/null
popd > /dev/null
