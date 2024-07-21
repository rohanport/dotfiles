#!/bin/bash

########################################################################################################################
# Install zsh and setup pure theme
########################################################################################################################

cp ./.p10k.zsh ~/.p10k.zsh

sudo apt-get update && sudo apt-get install -y curl
sh -c "$(curl -L https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)" -- \
    -a "export TERM=xterm-256color" \
    -a "source ~/.p10k.zsh" # Override the zsh-in-docker term setting to allow for all styles of powerlevel10k

echo "Successfully installed zsh"