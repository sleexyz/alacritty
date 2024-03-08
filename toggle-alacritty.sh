#!/bin/sh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title toggle alacritty
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

SOCKET_PATH="$(cat $TMPDIR/alacritty_socket)"
target/release/alacritty msg --socket $SOCKET_PATH toggle-show
if [ $? -ne 0 ]; then
    open -a Alacritty
fi