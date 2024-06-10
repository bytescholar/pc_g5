#!/usr/bin/env bash
# Instalação básica de pacotes + habilitação do flatpak + configurações essenciais

# Primeira atualização do sistema
sudo apt update
sudo apt upgrade -y

# Remoção de softwares desnecessários
sudo snap remove --purge thunderbird
sudo apt purge -y deja-dup gnome-calendar gnome-clocks remmina seahorse gnome-snapshot thunderbird

# Definir senha do root
sudo passwd root

# Instalação básica de drivers, fontes e utilitários
sudo apt install -y gufw ufw curl gcc g++ synaptic ttf-mscorefonts-installer fonts-crosextra-carlito fonts-crosextra-caladea fonts-roboto fonts-roboto-slab fonts-inconsolata fonts-jetbrains-mono fonts-firacode vim build-essential dkms linux-headers-$(uname -r) rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi htop locate ubuntu-restricted-extras ubuntu-restricted-addons gnome-tweaks gnome-sushi openjdk-21-jdk openjdk-21-jre gnome-shell-extension-manager wget amd64-microcode libdrm-amdgpu1 xserver-xorg-video-amdgpu mesa-vulkan-drivers libvulkan1 vulkan-tools vulkan-validationlayers flatpak

# Habilita arquitetura de 32 bits no sistema
sudo dpkg --add-architecture i386

# Adiciona o repositório Flathub
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Reduz drasticamente o uso de swap
echo "vm.swappiness=1" | sudo tee -a /etc/sysctl.conf

# Editar fstab para adicionar opções 'noatime' e 'commit=600'
sudo nano /etc/fstab
