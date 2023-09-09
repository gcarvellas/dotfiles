#!/bin/bash

# Saves current computer's dotfiles into this folder

declare -a bin_files=("battery_mode.sh" "bluetooth_scan.sh" "monitor_refresh.sh" "toggle_compositor.sh" "volume_brightness.sh")

for bin_file in ${bin_files[@]}; do
	cp /usr/bin/${bin_file} ./bin/
done

cp ~/.config/compton.conf ./compton

cp ~/.config/dunst/dunstrc ./dunst

cp ~/.local/share/fonts/Hack*.ttf ./fonts

cp ~/.config/i3/config ./i3

cp -r ~/.config/i3blocks ./i3blocks

cp ~/.config/kitty/kitty.conf ./kitty

cp /etc/X11/xorg.conf .

cp ~/.bash_aliases .

cp ~/.bashrc .

cp ~/.xinitrc .

cp ~/.vimrc .

cp ~/.config/Code/User/*.json ./Code/User/

cp ~/Documentation/vscode.txt vscode.txt
