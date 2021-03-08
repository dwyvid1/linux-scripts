#!/bin/bash

# Ubuntu 20.04 tested.

echo
echo "System update"
echo
apt update && apt upgrade && apt autoremove
echo
echo "Installing VIM"
echo
apt install vim
echo
echo "Installing Steam"
echo
apt install steam
echo
echo "Installing neofetch"
echo
apt install neofetch
echo
echo "Installing gimp"
echo
apt install gimp
echo
echo "Installing Gnome Disks"
echo
apt install gnome-disk-utility
echo
echo "Installing OBS Studio"
echo
apt install obs-studio
echo
echo "Installing Kdenlive"
echo
apt install kdenlive
echo
echo "Installing Unzip"
echo
apt install unzip
echo
echo "Installing VLC"
echo
apt install vlc
echo