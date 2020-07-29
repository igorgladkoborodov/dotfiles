#!/bin/bash

echo "Setup ~/.zshrc"
rm ~/.zshrc
ln -s ${PWD}/zsh/zshrc ~/.zshrc

echo "Setup ~/.zshrc.local for local zsh stuff"
touch ~/.zshrc.local

echo "Setup MTMR, please restart it to make effect"
rm ~/Library/Application\ Support/MTMR/items.json
ln -s ${PWD}/mtmr/items.json ~/Library/Application\ Support/MTMR/items.json

echo "Setup autorun"
rm -rf ~/.config/autorun
ln -s ${PWD}/autorun ~/.config/autorun

rm ~/Library/LaunchAgents/com.user.loginscript.plist
cp ${PWD}/autorun/com.user.loginscript.plist ~/Library/LaunchAgents/com.user.loginscript.plist
launchctl load ~/Library/LaunchAgents/com.user.loginscript.plist

echo "Done"
