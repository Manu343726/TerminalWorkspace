#!/bin/bash

. ~/TerminalWorkspace/sync_repo.sh
cd ~/TerminalWorkspace/
git add -A
git commit -m "Automatic config update (PUSH) from $(whoami)@$(uname --all)"
git push
