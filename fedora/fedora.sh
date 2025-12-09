#!/bin/bash

echo "========================================"
echo "  Atualizando o sistema"
echo "========================================"
dnf update -y && dnf upgrade -y && dnf autoremove -y

echo "========================================"
echo "  Instalando RPM Fusion (FREE e NonFREE)"
echo "========================================"
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "========================================"
echo "  Instalando codecs essenciais"
echo "========================================"
dnf install -y \
    binutils gcc make patch libgomp \
    glibc-headers glibc-devel kernel-headers kernel-devel \
    dkms qt5-qtx11extras libxkbcommon

echo "========================================"
echo "  Instalando aplicativos"
echo "========================================"
dnf install -y \
    steam \
    neofetch \
    unzip \
    htop \
    vlc \
    discord

echo "========================================"
echo "  Instalando Visual Studio Code"
echo "========================================"
rpm --import https://packages.microsoft.com/keys/microsoft.asc

cat <<EOF > /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

dnf check-update
dnf install -y code

echo "========================================"
echo "  Instalação concluída!"
echo "  Sistema atualizado e programas instalados com sucesso."
echo "========================================"