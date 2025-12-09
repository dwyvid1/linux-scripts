#!/bin/bash

echo "==> Atualizando o sistema..."
sudo pacman -Syu --noconfirm

echo "==> Instalando utilitários básicos..."
sudo pacman -S --noconfirm firefox neofetch htop unzip nano vim ffmpeg \
gst-libav gst-plugins-good gst-plugins-bad gst-plugins-ugly

echo "==> Instalando Git..."
sudo pacman -S --noconfirm git

echo "==> Instalando yay (AUR helper)..."
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

echo "==> Habilitando multilib para a Steam..."
sudo sed -i '/\[multilib\]/,/Include/s/^#//' /etc/pacman.conf

echo "==> Atualizando pacotes após habilitar multilib..."
sudo pacman -Syu --noconfirm

echo "==> Instalando Steam..."
sudo pacman -S --noconfirm steam

echo "==> Instalando Discord (via pacman oficial)..."
sudo pacman -S --noconfirm discord

echo "==> Instalando Google Chrome (via AUR)..."
yay -S --noconfirm google-chrome

echo "==> Instalação concluída com sucesso!"