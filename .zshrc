
# alias
## git
alias g='git'
alias ga='git add .'
alias gs='git status'
alias gc='git commit -m'
alias t='tig'
alias ts='tig status'
alias gp='git push'
alias gcz='git cz'

## vim
alias v='nvim'
alias vi='nvim'

## dir
alias dev='cd ~/documents/GitHub'

## c compile and run

function runc () {
  gcc -O $1; ./a.out
}
alias -s c=runc

alias c='(){ gcc -o $1 $1.c && ./$1}'
