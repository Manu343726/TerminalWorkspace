#!/bin/bash

if [[ $(pacman -Qu) != "" ]]; then
    echo "Upgrade aviable"
elif [[ $(yaourt -Qua) != "" ]]; then
    echo "AUR upgrade aviable"
else
    echo "up-to-date"
fi
