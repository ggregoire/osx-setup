PATH="/usr/local/bin:$PATH"

ZSH_THEME="pure"

plugins=(brew git npm osx zsh-syntax-highlighting)

export ZSH=/Users/guillaume/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

alias hosts="sudo code /etc/hosts"
alias zshrc="sudo code ~/.zshrc"
alias du="ncdu --color dark -rr -x --exclude .git"
