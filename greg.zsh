export BUNDLER_EDITOR='subl'
export EDITOR='subl -w'
source ~/.git-prompt.sh

alias ll='ls -lah'
alias gg='git status -s'
alias s='subl'

alias gpullm='git pull origin master'
alias gpushm='git push origin master'

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

unsetopt share_history

export RUBY_GC_MALLOC_LIMIT=90000000
export RUBY_GC_HEAP_FREE_SLOTS=200000
export PATH="/usr/local/sbin:$PATH"