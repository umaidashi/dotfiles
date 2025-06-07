# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PROMPT='%F{cyan}%h %~ %T
# >%f '

if [[ -r "$HOME/.zshrc-bst" ]]; then
  source "$HOME/.zshrc-bst"
fi

function wt() {
  git worktree add ./worktrees/$1 main
  cd ./worktrees/$1 && git checkout -b $1
}

function j() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

cd_git_repo() {
  local selected="$(ghq list | fzf)"

  if [[ -n "$selected" ]]; then
    cd "$(ghq root)/$selected"
  fi
}

gre () {
	grep -E $1 -rl $2
}

bindkey -s '^g' 'cd_git_repo\n'

export EDITOR=nvim
# remove Caches in 42Tokyo
alias rmcache='rm -Rfv /Library/Caches/* ~/Library/Caches/* 2> /dev/null'

alias nc='~/auto_commit_note.sh &'

alias repo='(){cd ~/documents/git/$1}'
alias desk='cd ~/Desktop'
alias md='(){mkdir $1 ; cd $1}'
alias mdn='(){mkdir ex{01..0\$1}'
alias t='touch'
alias o='open'
alias o.='open .'
alias d='mkdir'
alias c='bat'
alias cb='(){cat $1 | pbcopy}'
alias l='less'
alias y='yazi'

# ls
alias ls='ls -aGF'
export LSCOLORS=cxfxcxdxbxegedabagacad
alias ll='ls -l'
alias lla='ls -la'

# grep
alias -g G='| grep --color'

# vim
alias v='nvim'
alias vi='v'
alias v.='v .'
alias vl='NVIM_APPNAME=nvim-lua nvim'
alias vs='NVIM_APPNAME=nvim.vs nvim'

# tmux
alias tm='tmux'
alias tms='tmux ls'

# tmux session selector
function ts() {
  local session
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --query="$1" --select-1 --exit-0)
  if [[ -n "$session" ]]; then
    tmux attach-session -t "$session" || tmux switch-client -t "$session"
  fi
}

# git
alias g='git'
alias gc='(){git commit -m "$1 $2"}'
alias gp='git push'
alias ga='git add'
alias gaa='git add .'
alias gs='git status'
alias gsa='git status -uall'
alias gl='git log'
alias gig='git ls-files -o -i --exclude-standard'
alias lg='lazygit'
alias gini='gh repo create $(basename $(pwd)) --push -s .'
alias rmlock='rm -f .git/index.lock'
alias gw='git worktree'

# shotcut
alias vz='vi ~/.zshrc'
alias sz='source ~/.zshrc'
alias vv='vi ~/.vimrc'
alias vw='vi ~/.wezterm.lua'
alias vn='v ~/dotfiles'

# npm
alias p='pnpm'

alias manja='(){open https://ja.manpages.org/$1}'

function runc () {
  cc -Wall -Wextra -Werror -O $1; ./a.out
}
alias -s c=runc

alias cc='cc -Wall -Wextra -Werror'
alias cf='python3 -m c_formatter_42'
alias cn='norminette -R CheckForbiddenSourceHeader'

alias gb='gobang'

# export USER=yu.oishi
# export USER=umaidashi
# export MAIL=yoishi@student.42tokyo.jp

# go
export PATH="$HOME/go/bin:$PATH"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# flutter
export PATH="$PATH:$HOME/flutter/bin"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust \
    zsh-users/zsh-syntax-highlighting \
    zsh-users/zsh-autosuggestions \
    romkatv/powerlevel10k

eval $(/opt/homebrew/bin/brew shellenv)

# Created by `pipx` on 2024-08-14 05:36:04
export PATH="$PATH:$HOME/.local/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(atuin init zsh)"

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh


if [[ -r "$HOME/.limbo/env" ]]; then
  . "$HOME/.limbo/env"
fi

# Added by Windsurf
export PATH="$HOME/.codeium/windsurf/bin:$PATH"
alias claude="$HOME/.claude/local/claude"
