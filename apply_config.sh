#!/bin/bash

echo "Applying configuration..."
echo "Generating snapshots..."

#Generate configuration scripts for tmuxline and promptline:
vim -c "TmuxlineSnapshot! ~/.tmuxline_cfg" -c qall
vim -c "PromptlineSnapshot! ~/.shell_prompt.sh airline" -c qall

echo "Reloading zsh config..."
source ~/.zshrc


echo "Done"

