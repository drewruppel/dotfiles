# Aliases
## Config
alias dotfiles='/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME'

## Open w/ Chrome
alias chrome="open -a 'Google Chrome'"

## Files
alias home="cd ~/"
alias ..="cd .."
alias ...="cd ../.."
alias la="ls -alh --color"

## GitHub
alias ga="git add $*"
alias gc="git commit -m $1"
alias gr="git reset ~HEAD"

## Python
alias py="python3"
alias pip="python3 pip"
alias pi="pip install -r requirements.txt"

## Ruby
alias jsonize="ruby ./.bin/jsonize.rb $*"

## Stuff
alias reload="source ~/.zshrc && clear"

## Editor
export EDITOR=vim 
export PATH="/usr/local/bin:$PATH"

## Starship
eval "$(starship init zsh)"

## Postgres
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

## NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
