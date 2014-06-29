#!/bin/bash

./sync_repo.sh
git add -A
git commit -m "Automatic config update (PUSH) from $(whoami)@$(uname --all)"
git push
