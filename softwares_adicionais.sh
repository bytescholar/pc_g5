#!/usr/bin/env bash

# Instalação de softwares pós reinicialização

sudo apt install -y pdfarranger drawing shotcut obs-studio codeblocks gscan2pdf handbrake neovim converseen virt-manager gnome-video-trimmer video-downloader obfuscate gimp pdfsam guake sakura

sudo flatpak install -y flathub org.gnome.design.Lorem
sudo flatpak install -y flathub com.google.Chrome
sudo flatpak install -y flathub com.microsoft.Edge
sudo flatpak install -y flathub org.kde.kcharselect

# Desabilitar atualizações automáticas

sudo apt purge --auto-remove unattended-upgrades

sudo systemctl disable apt-daily-upgrade.timer
sudo systemctl disable apt-daily.timer
sudo systemctl mask apt-daily-upgrade.service
sudo systemctl mask apt-daily.service

sudo nano /etc/apt/apt.conf.d/20auto-upgrades
