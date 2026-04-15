#!/usr/bin/env bash
# --- Interrompe a execução do script em caso de erros --- #
set -e
# --- Remove completamente as versões anteriores do pacote / serviço warsaw --- #
sudo systemctl stop warsaw || true
sudo apt purge -y warsaw || true
sudo rm -rf /usr/local/bin/warsaw /etc/warsaw || true
rm -rf ~/.config/warsaw || true
# --- Atualização dos repositórios --- #
sudo apt update
# --- Instalação de dependências e pacotes auxiliares --- #
sudo apt install -y libnss3-tools libcurl4 libglib2.0-0 libnss3 libxss1 wget ca-certificates || true
# --- Download da versão mais recente do Módulo de Segurança --- #
DOWNLOAD_URL="https://cloud.gastecnologia.com.br/cef/warsaw/install/GBPCEFwr64.deb"
wget -O /tmp/warsaw.deb "$DOWNLOAD_URL"
# --- Instalação do Módulo de Segurança e correção de dependências (se necessário) --- #
sudo dpkg -i /tmp/warsaw.deb || sudo apt install -f -y
# --- Remoção do instalador (arquivo temporário) --- #
rm -f /tmp/warsaw.deb
# --- Habilitação do serviço warsaw --- #
sudo systemctl daemon-reload || true
sudo systemctl enable warsaw || true
sudo systemctl start warsaw || true
# --- Verifica se serviço warsaw está rodando --- #
sudo systemctl is-active warsaw
echo "Instalação concluída!"
