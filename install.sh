#!/bin/bash

########################################################################################################################
# Install zsh and setup pure theme
########################################################################################################################

sudo apt-get update && sudo apt-get install -y curl
sh -c "$(curl -L https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)"

cp ./.p10k.zsh ~/.p10k.zsh

echo "Successfully installed zsh"