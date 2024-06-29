# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PROMPT='%F{cyan}%h %~ %T
# >%f '

alias gorun='go mod init a; go run .'

alias repo='(){cd ~/documents/git/$1}'
alias desk='cd ~/Desktop'
alias md='(){mkdir $1 ; cd $1}'
alias mdn='(){mkdir ex{01..0\$1}'
alias t='touch'
alias o='open'
alias o.='open .'
alias d='mkdir'
# alias cat='bat'
alias c='cat'
alias cb='(){cat $1 | pbcopy}'
alias l='less'

# ls
alias ls='ls -aGF'
export LSCOLORS=cxfxcxdxbxegedabagacad
alias ll='ls -l'
alias lla='ls -la'

# vim
alias nvim='~/nvim-macos/bin/nvim'
alias v='nvim'
alias vi='v'
alias v.='v .'

alias tm='tmux new -s'
alias tma='tmux a -t'

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

alias vz='vi ~/.zshrc'
alias sz='source ~/.zshrc'
alias vv='vi ~/.vimrc'
alias vw='vi ~/.wezterm.lua'

alias code='open -a "Visual Studio Code"'

alias manja='(){open https://ja.manpages.org/$1}'

function runc () {
  cc -Wall -Wextra -Werror -O $1; ./a.out
}
alias -s c=runc

alias ccw='cc -Wall -Wextra -Werror'
alias cf='python3 -m c_formatter_42'
alias cn='norminette -R CheckForbiddenSourceHeader'


export USER=yoishi
export MAIL=yoishi@student.42tokyo.jp

# brew
export PATH="/Users/yoishi/.brew/bin:$PATH"

# nvm
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completionxport NVM_DIR="$HOME/.nvm"

# bun completions
[ -s "/Users/umaidashi/.bun/_bun" ] && source "/Users/umaidashi/.bun/_bun"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

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

### End of Zinit's installer chunk

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval $(/opt/homebrew/bin/brew shellenv)

alias francinette=/Users/yoishi/francinette/tester.sh

alias paco=/Users/yoishi/francinette/tester.sh
