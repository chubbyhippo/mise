#!/usr/bin/env sh

mkdir -p ~/.config/mise
[ -f ~/.config/mise/config.toml ] || curl -fsSL https://raw.githubusercontent.com/chubbyhippo/mise/refs/heads/main/config.toml -o ~/.config/mise/config.toml
mise install --yes
