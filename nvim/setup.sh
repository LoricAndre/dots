#!/usr/bin/bash

. ../vars.sh
./lua/plugins/nvim-base16.lua.tpl

ln -sf "$(pwd)" "$HOME/.config/"
