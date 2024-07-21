#!/bin/bash

########################################################################################################################
# Install zsh and setup pure theme
########################################################################################################################

sudo apt-get update && sudo apt-get install -y curl vim
sh -c "$(curl -L https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)" -- \
    -a "export TERM=xterm-256color" # Override the zsh-in-docker term setting to allow for all styles of powerlevel10k

cp ./.p10k.zsh ~/.p10k.zsh

# Ensure new .p10k.zsh config in every terminal
echo "# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh" >> ~/.zshrc

echo "Successfully installed zsh"