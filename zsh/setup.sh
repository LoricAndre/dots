#!/usr/bin/bash

for f in $(/bin/ls . | grep -v 'setup.sh'); do
  ln -s "$(pwd)/$f" "$HOME/.$f"
done

sudo chsh loric -s /usr/bin/zsh
