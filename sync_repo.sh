#!/bin/bash

#This file gets your current configuration and copies it into the repository:
echo "Syncing repository config..."

echo "Copying configuration files..."
#Copy configuration files to their locations:
cp ~/.vimrc ~/TerminalWorkspace/scripts/.vimrc -f -v
cp ~/.zshrc ~/TerminalWorkspace/scripts/.zshrc -f -v
cp ~/.tmux.conf ~/TerminalWorkspace/scripts/.tmux.conf -f -v
cp ~/.fbtermrc ~/TerminalWorkspace/scripts/.fbtermrc -f -v
cp /etc/profile ~/TerminalWorkspace/scripts/profile -f -v

echo "Copying presets..."
#Copy tmuxline full preset:
cp ~/.vim/bundle/tmuxline.vim/autoload/tmuxline/presets/full.vim ~/TerminalWorkspace/scripts/tmuxline/presets/full.vim -f -v

#Copy tmuxline status scripts to /usr/local/bin
cp /usr/local/bin/* ~/TerminalWorkspace/scripts/status/ -f -v

#Apply current configuration:
. ~/TerminalWorkspace/apply_config.sh

echo "Done"
