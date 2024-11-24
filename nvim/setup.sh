#!/bin/bash

sudo apt update

sudo apt install -y curl jq unzip lua5.4

# Install Neovim

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
echo "
export PATH=\$PATH:/opt/nvim-linux64/bin
alias nv=\"nvim\"" >> ~/.bashrc
source ~/.bashrc

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

