#!/usr/bin/bash

. ../vars.sh
./config.tpl

ln -sf "$(pwd)" "$HOME/.config"
