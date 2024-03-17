#!/bin/bash
dotfiles=(.zshrc .tmux.conf .vimrc .wezterm.lua .config)

for file in "${dotfiles[@]}"; do
        ln -svf $file ~/
done
