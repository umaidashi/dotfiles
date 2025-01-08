#!/bin/bash
dotfiles=(.zshrc .tmux.conf .vimrc .gitconfig .wezterm.lua .p10k.zsh .config auto_commit_note.sh)

for file in "${dotfiles[@]}"; do
  ln -svf ~/dotfiles/$file ~/
done
