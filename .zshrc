PROMPT='%F{cyan}%h %~ %T
>%f '


alias repo='(){cd ~/documents/github/$1}'
alias desk='cd ~/Desktop'
alias md='(){mkdir $1 ; cd $1}'
alias mdn='(){mkdir ex{01..0\$1}'
alias t='touch'
alias o='open'
alias o.='open .'
alias d='mkdir'
alias ll='ls -l'
alias lla='ls -la'
alias v='lv'
alias vi='lv'
alias v.='v .'
alias c='cat'
alias cb='(){cat $1 | pbcopy}'
alias l='less'

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

alias vz='vi ~/.zshrc'
alias sz='source ~/.zshrc'
alias vv='vi ~/.vimrc'
alias vw='vi ~/.wezterm.lua'
alias lv='/Users/umaidashi/.local/bin/lvim'

alias manja='(){open https://ja.manpages.org/$1}'

function runc () {
  cc -Wall -Wextra -Werror -O $1; ./a.out
}
alias -s c=runc

alias cc='cc -Wall -Wextra -Werror'
alias cf='python3 -m c_formatter_42'
alias cn='norminette -R CheckForbiddenSourceHeader'


export USER=yoishi
export MAIL=yoishi@student.42tokyo.jp



# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completionxport NVM_DIR="$HOME/.nvm"

# bun completions
[ -s "/Users/umaidashi/.bun/_bun" ] && source "/Users/umaidashi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
