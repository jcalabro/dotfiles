#!/usr/bin/env bash

# Zig setup:
curl -L https://github.com/marler8997/anyzig/releases/latest/download/anyzig-$(uname -m)-linux.tar.gz | tar xz && sudo mv zig /usr/local/bin

# Python setup:
pipx install python-lsp-server
pipx inject python-lsp-server python-lsp-ruff python-lsp-black

# Rust setup:
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
