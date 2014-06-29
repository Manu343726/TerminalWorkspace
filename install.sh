#!/bin/bash

echo "Installing dependencies..."
sudo yaourt -S --noconfirm --needed gvim tmux oh-my-zsh-git fbterm acpi

echo "Setting up zsh..."
chsh -s /bin/zsh

echo "Syncing home config..."
./sync_home.sh

