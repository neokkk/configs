#!/bin/bash

sudo apt update

sudo apt install -y curl jq unzip python3 python-is-python3 lua5.4 neovim

pip install notebook nbclassic jupyter-console selenium

# Install Dependencies for Telescope

apt list --installed ripgrep | grep installed

if [ $? -ne 0 ]; then
    sudo apt install ripgrep
fi

# Install Github Copilot

node --version

if [ $? -ne 0 ]; then
    tag=$(curl -s "https://api.github.com/repos/nvm-sh/nvm/releases/latest" | jq -r ".tag_name")
    curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/$tag/install.sh" | bash
    sleep 1
    source ~/.bashrc

    nvm install --lts
    node --version

    if [ $? -ne 0 ]; then
        echo "Unable to install Node.js"
        exit 1
    fi
fi

git clone https://github.com/github/copilot.vim.git \
    ~/.config/nvim/pack/github/start/copilot.vim

