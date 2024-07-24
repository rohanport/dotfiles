#!/bin/bash

########################################################################################################################
# Install zsh and setup pure theme
########################################################################################################################

sudo apt-get update && sudo apt-get install -y curl vim

# Force terminal to be support 256 colours so that we can use p10k pure style
# Set HISTFILE to be in /commandhistory dir if exists so that we can persist between container rebuilds
sh -c "$(curl -L https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)" -- \
    -a "export TERM=xterm-256color" \
    -a "if [ -d /commandhistory ]; && export HISTFILE=/commandhistory/.zsh_history"

# Copy over p10k config
cp ./.p10k.zsh ~/.p10k.zsh

# Ensure new .p10k.zsh config in every terminal
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh" >> ~/.zshrc

echo "Successfully installed zsh"