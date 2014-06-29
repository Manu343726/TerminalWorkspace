#!/bin/bash

#This file gets your current configuration and copies it into the repository:
echo "Syncing repository config..."

echo "Copying configuration files..."
#Copy configuration files to their locations:
cp ~/.vimrc ./scripts/.vimrc -f -v
cp ~/.zshrc ./scripts/.zshrc -f -v
cp ~/.tmux.conf ./scripts/.tmux.conf -f -v
cp ~/.fbtermrc ./scripts/.fbtermrc -f -v
cp /etc/profile ./scripts/profile -f -v

echo "Copying presets..."
#Copy tmuxline full preset:
cp ~/.vim/bundle/tmuxline.vim/autoload/tmuxline/presets/full.vim ./scripts/tmuxline/presets/full.vim -f -v

#Copy tmuxline status scripts to /usr/local/bin
cp /usr/local/bin/* ./scripts/status/ -f -v

#Apply current configuration:
./apply_config.sh

echo "Done"
