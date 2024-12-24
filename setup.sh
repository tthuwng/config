#!/bin/bash
set -e

ln -s "${PWD}/zshrc" ~/.zshrc

brew bundle --verbose

# symbolic links
ln -sf "${PWD}/vimrc" "${HOME}/.vimrc"
ln -sf "${PWD}/tmux.conf" "${HOME}/.tmux.conf"
ln -sf "${PWD}/zshrc" "${HOME}/.zshrc"
