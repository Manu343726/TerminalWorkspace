#!/bin/bash

echo "Installing dependencies..."
yaourt -S --noconfirm --needed gvim tmux oh-my-zsh-git fbterm acpi vundle-git

echo "Setting up zsh..."
chsh -s /bin/zsh

echo "Syncing home config..."
. ~/TerminalWorkspace/sync_home.sh

