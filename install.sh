#!/bin/bash

########################################################################################################################
# Install zsh and setup pure theme
########################################################################################################################

# curl - needed to install oh-my-zsh
# vim  - preferred editor
sudo apt-get update && sudo apt-get install -y curl vim

# Force terminal to be support 256 colours so that we can use p10k pure style
# Set HISTFILE to be in /commandhistory dir if exists so that we can persist between container rebuilds
sh -c "$(curl -L https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)" -- \
    -a "export TERM=xterm-256color" \
    -a "[ -d /commandhistory ] && export HISTFILE=/commandhistory/.zsh_history"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
sed -i '1s/^/\[\[ -r "\${XDG_CACHE_HOME:-\$HOME\/\.cache}\/p10k-instant-prompt-\${(%):-%n}\.zsh" \]\] \&\& source "\${XDG_CACHE_HOME:-\$HOME\/\.cache}\/p10k-instant-prompt-\${(%):-%n}\.zsh"\n\n/' ~/.zshrc

# Copy over p10k config
cp ./.p10k.zsh ~/.p10k.zsh

# Ensure new .p10k.zsh config in every terminal
echo "
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh" >> ~/.zshrc

echo "Successfully installed zsh"