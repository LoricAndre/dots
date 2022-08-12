#!/usr/bin/bash

mkdir -p ~/.config/fontconfig/conf.d
ln -s "$(pwd)/monospace" "$HOME/.config/fontconfig/conf.d/99-monospace.conf"
