#!/bin/bash

TW_PATH = ~/TerminalWorkspace
CURRENT_PATH = ./

cd $TW_PATH
git reset --hard HEAD
git pull
. $TW_PATH/sync_home.sh
cd $CURRENT_PATH
