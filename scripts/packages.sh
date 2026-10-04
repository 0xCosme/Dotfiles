#!/usr/bin/env bash

set -e

echo "==> Atualizando sistema..."
sudo pacman -Syu --noconfirm

echo "==> Instalando pacotes..."

sudo pacman -S --needed --noconfirm \
    git \
    zsh \
    neovim \
    hyprland \
    hyprpaper \
    hyprlock \
    hyprshot \
    xdg-desktop-portal-hyprland \
    waybar \
    kitty \
    rofi \
    cliphist \
    ly \
    nwg-look \
    networkmanager \
    network-manager-applet \
    ttf-firacode-nerd


echo "==> Pacotes instalados."
