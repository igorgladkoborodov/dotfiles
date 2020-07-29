#!/bin/bash

rm -rf ~/.config/autorun
ln -s ${PWD}/autorun ~/.config/autorun
# TODO: launch daemon

rm ~/.zshrc
ln -s ${PWD}/zsh/_zshrc ~/.zshrc
touch ~/.zshrc.local_

rm ~/Library/Application\ Support/MTMR/items.json
ln -s ${PWD}/mtmr/items.json ~/Library/Application\ Support/MTMR/items.json

rm -rf ~/.config/autorun
ln -s ${PWD}/autorun ~/.config/autorun
