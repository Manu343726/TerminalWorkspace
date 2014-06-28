#!/bin/bash

if [[ $(nm-tool | grep "\*.*: " -o | grep "[a-zA-Z0-9_ ]*" -c) = 0 ]]; then
	echo "(no WLAN)"
else
	echo $(nm-tool | grep "\*.*: " -o | grep "[a-zA-Z0-9_ ]*" -o)
fi
