# prompt
autoload -U promptinit && promptinit
prompt pure

# git auto-complete
autoload -Uz compinit && compinit

# fix delete in terminal
bindkey "^[[3~" delete-char

# history
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
export HISTFILE=~/.zsh_history

# aliases
alias gpom='git push origin master'
alias ll='ls -lh'
alias nodemon='NODE_ENV=dev nodemon -e html,js,json'
alias reload='source ~/.zshrc'
alias comsos=cosmos
alias nom=npm
alias work='ketchup start 25'
alias comfort-break='ketchup start 10'

# environment
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export EDITOR='/usr/local/bin/vim'
export PATH=$PATH:~/bin
export USE_REDIS=1
export AWS_REGION=eu-west-1

# proxies
if [ -f ~/bin/proxies ]; then
  source ~/bin/proxies
fi

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# nvm
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
