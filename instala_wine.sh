#!/usr/bin/env bash
# Instala Wine

# Habilitar arquitetura de 32 bits no sistema:
sudo dpkg --add-architecture i386 

# Criação do repositório e download de sua respectiva chave
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

# Repositório específico para o Debian 12
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo apt update

# Instalação do Wine
sudo apt install -y --install-recommends winehq-stable

# Instalação Winetricks
sudo apt-get install -y winetricks
winetricks -q dotnet40
