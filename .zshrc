# Aliases
## Config
alias config='/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME'

## GitHub
alias ga="git add $*"
alias gc="git commit -m $1"
alias gr="git reset ~HEAD"

## Python
alias py="python3"
alias pip="python3 pip"


# Editor
export EDITOR=vim 

# Last line
eval "$(starship init zsh)"
vim .zshrc
