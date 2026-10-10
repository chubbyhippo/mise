#!/usr/bin/env sh

mkdir -p ~/.config/mise
[ -f ~/.config/mise/config.toml ] || curl -fsSL https://raw.githubusercontent.com/chubbyhippo/mise/refs/heads/main/config.toml -o ~/.config/mise/config.toml
[ -f ~/.bashrc ] && ! grep -qsF 'mise activate bash' ~/.bashrc && echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
[ -f ~/.zshrc ] && ! grep -qsF 'mise activate zsh' ~/.zshrc && echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
case "$SHELL" in
  */zsh) eval "$(~/.local/bin/mise activate zsh)" ;;
  *) eval "$(~/.local/bin/mise activate bash)" ;;
esac
case "$(uname -s 2>/dev/null)" in
  MINGW*|MSYS*|CYGWIN*|Windows_NT*)
    if command -v powershell.exe >/dev/null 2>&1; then
      powershell.exe -NoProfile -NonInteractive -Command '$shims = "$env:LOCALAPPDATA\mise\shims"
                                       $userPath = [Environment]::GetEnvironmentVariable("Path", "User")
                                       if (($userPath -split ";") -notcontains $shims) {
                                         [Environment]::SetEnvironmentVariable("Path", "$shims;$userPath", "User")
                                       }'
    fi
    ;;
esac
mise install --yes
