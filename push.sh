#!/bin/bash

TW_PATH='~/TerminalWorkspace'
CURRENT_PATH='.'

. $TW_PATH/sync_repo.sh

cd $TWPATH
git add -A
git commit -m "Automatic config update (PUSH) from $(whoami)@$(uname --all)"
git push

cd $CURRENT_PATH
