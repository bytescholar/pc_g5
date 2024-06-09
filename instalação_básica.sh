#!/usr/bin/env bash
# Instalação básica de drivers, fontes e utilitários + habilitação do flatpak + configurações essenciais

sudo apt install gufw ufw curl gcc g++ synaptic ttf-mscorefonts-installer fonts-crosextra-carlito fonts-crosextra-caladea fonts-roboto fonts-roboto-slab fonts-inconsolata fonts-jetbrains-mono fonts-firacode vim build-essential dkms linux-headers-$(uname -r) rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi htop locate ubuntu-restricted-extras ubuntu-restricted-addons gnome-tweaks gnome-sushi openjdk-21-jdk openjdk-21-jre gnome-shell-extension-manager wget amd64-microcode libdrm-amdgpu1 xserver-xorg-video-amdgpu mesa-vulkan-drivers libvulkan1 vulkan-tools vulkan-validationlayers flatpak

# Adiciona o repositório Flathub
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Reduz drasticamente o uso de swap
echo "vm.swappiness=1" | sudo tee -a /etc/sysctl.conf

# Editar fstab para adicionar opções 'noatime' e 'commit=600'
sudo nano /etc/fstab
