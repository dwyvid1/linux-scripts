#!/bin/bash

echo
echo "System update"
echo
dnf update && dnf upgrade && dnf autoremove
echo
echo "Installing the RPM Fusion FREE"
echo
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
echo
echo "Installing the RPM Fusion NonFREE"
echo
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
echo
echo "Installing codecs"
echo
dnf install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms qt5-qtx11extras libxkbcommon
echo
echo "Installing Steam"
echo
dnf install steam
echo
echo " Installing neofetch"
dnf install neofetch
echo
echo "Installing Unzip"
echo
dnf install unzip
echo
echo "Installing HTOP command"
echo
dnf install htop
echo
echo "Installing Kdenlive"
echo
dnf install kdenlive
echo
echo "Installing VLC"
echo
dnf install vlc
echo
echo "Installing GIMP"
echo
dnf install gimp
echo
echo "Installing OBS Studio"
echo
dnf install obs-studio
echo
echo "Installing Clip Grap"
echo
dnf install clipgrab
echo
echo "Installing Discord"
echo
dnf install discord
echo
echo "Installing Visual Studio Code 1/4"
echo
rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo
echo "Installing Visual Studio Code 2/4"
echo
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
echo
echo "Installing Visual Studio Code 3/4"
echo
dnf check-update
echo
echo "Installing Visual Studio Code 4/4"
echo
dnf install code
echo
echo "Your system has been updated and your programs have been successfully installed."
echo