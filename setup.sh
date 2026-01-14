#!/bin/bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Homebrew
command -v brew &>/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file="$DIR/Brewfile"

# Symlinks
ln -sf "$DIR/zshrc" ~/.zshrc
ln -sf "$DIR/tmux.conf" ~/.tmux.conf
ln -sf "$DIR/gitconfig" ~/.gitconfig

# TPM
[ -d ~/.tmux/plugins/tpm ] || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
