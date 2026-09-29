#!/usr/bin/env bash

set -e

DOTFILES="$HOME/dotfiles"

mkdir -p "$HOME/.config"

for item in "$DOTFILES/conf/"* "$DOTFILES/conf/."*; do
    name="$(basename "$item")"

    [[ "$name" == "." || "$name" == ".." ]] && continue

    ln -sfn "$item" "$HOME/.config/$name"
done

ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/.p10k.zsh" "$HOME/.p10k.zsh"

echo "Dotfiles instalados."
