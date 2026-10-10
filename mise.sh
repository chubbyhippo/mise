#!/usr/bin/env sh

[ -f ~/.config/mise/config.toml ] || curl -fsSL https://raw.githubusercontent.com/chubbyhippo/mise/refs/heads/main/config.toml -o ~/.config/mise/config.toml
[ -f ~/.bashrc ] && ! grep -qsF 'mise activate bash' ~/.bashrc && echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
eval "$(~/.local/bin/mise activate bash)"
mise install --yes
