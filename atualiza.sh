#!/usr/bin/env bash
# Todos os updates + remoção de pacotes e arquivos desnecessários
sudo apt update -y
sudo apt upgrade -y
sudo apt autoclean
sudo apt autopurge -y
sudo flatpak update --force-remove --assumeyes
