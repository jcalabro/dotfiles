#!/usr/bin/env bash

sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
nix-channel --update
