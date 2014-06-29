#!/bin/bash

echo "Copying config files..."

#Copy configuration files to their locations:
cp ./scripts/.vimrc ~/.vimrc -f -v
cp ./scripts/.zshrc ~/.zshrc -f -v
cp ./scripts/.tmux.conf ~/.tmux.conf -f -v
cp ./scripts/.fbtermrc ~/.fbtermrc -f -v
sudo cp ./scripts/profile /etc/profile -f -v

echo "Installing vim plugins..."
vim "BundleInstall" -c qall


echo "Copying presets..."

#Copy tmuxline full preset:
cp ./scripts/tmuxline/presets/full.vim ~/.vim/bundle/tmuxline.vim/autoload/tmuxline/presets/full.vim -f -v

#Copy tmuxline status scripts to /usr/local/bin
sudo cp ./scripts/status/* /usr/local/bin/ -f -v


#Apply current configuration
./apply_config.sh
