#!/usr/bin/bash

. ../vars.sh
./kitty.colors.tpl > kitty.colors

ln -sf "$(pwd)" "$HOME/.config"
