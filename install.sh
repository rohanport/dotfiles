#!/bin/bash

########################################################################################################################
# Install zsh and setup pure theme
########################################################################################################################

sudo apt-get update && sudo apt-get install -y curl
sudo sh -c "$(curl -L https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)"

mkdir -p ~/.zsh
git clone https://github.com/sindresorhus/pure.git ~/.zsh/pure

echo "# .zshrc
fpath+=($HOME/.zsh/pure)" >> ~/.zshrc

echo "# Pure color configs
zstyle :prompt:pure:path color '35' # Pleasant green
zstyle :prompt:pure:git:branch color '63' # Lavender
zstyle :prompt:pure:prompt:success color '76' # Lime green

# Load Pure as prompt
autoload -U promptinit; promptinit
prompt pure"  >> ~/.zshrc

echo "Successfully installed zsh"