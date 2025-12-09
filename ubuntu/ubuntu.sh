#!/bin/bash

echo "========================================"
echo "  Atualizando o sistema"
echo "========================================"
apt update -y && apt upgrade -y && apt autoremove -y

echo "========================================"
echo "  Instalando aplicativos essenciais"
echo "========================================"
apt install -y \
    vim \
    steam \
    neofetch \
    unzip \
    vlc

echo "========================================"
echo "  Instalação concluída!"
echo "  Sistema atualizado e programas instalados com sucesso."
echo "========================================"