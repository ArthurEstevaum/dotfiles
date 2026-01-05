#!/bin/bash

# Define o caminho da pasta custom (padrão ou personalizada)
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

echo "--- Instalando Plugins ---"
# (Seus comandos de plugins que vimos antes...)
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi

echo "--- Instalando Temas ---"

# Powerlevel10k
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
  echo "Baixando Powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi

echo "Tudo pronto! Reinicie o terminal."
