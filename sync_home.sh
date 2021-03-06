#!/bin/bash

echo "Copying config files..."

#Copy configuration files to their locations:
cp ~/TerminalWorkspace/scripts/.vimrc ~/.vimrc -f -v
cp ~/TerminalWorkspace/scripts/.zshrc ~/.zshrc -f -v
cp ~/TerminalWorkspace/scripts/.tmux.conf ~/.tmux.conf -f -v
cp ~/TerminalWorkspace/scripts/.fbtermrc ~/.fbtermrc -f -v
sudo cp ~/TerminalWorkspace/scripts/profile /etc/profile -f -v

echo "Installing vim plugins..."
vim "BundleInstall" -c qall


echo "Copying presets..."

#Copy tmuxline full preset:
cp ~/TerminalWorkspace/scripts/tmuxline/presets/full.vim ~/.vim/bundle/tmuxline.vim/autoload/tmuxline/presets/full.vim -f -v

#Copy tmuxline status scripts to /usr/local/bin
sudo cp ~/TerminalWorkspace/scripts/status/* /usr/local/bin/ -f -v


#Apply current configuration
. ~/TerminalWorkspace/apply_config.sh

