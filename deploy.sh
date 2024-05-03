#!/bin/bash
dotfiles=(.zshrc .tmux.conf .vimrc .wezterm.lua .p10k.zsh .config)

for file in "${dotfiles[@]}"; do
	ln -svf ~/dotfiles/$file ~/
done
