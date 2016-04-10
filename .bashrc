shopt -s histappend
shopt -s cdspell

export HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

HISTSIZE=1000
HISTFILESIZE=2000

RED="\[$(tput setaf 1)\]"
RESET="\[$(tput sgr0)\]"
PS1="\u@\h:\w${RED}$(__git_ps1 "(%s)")${RESET}\$ "

if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias du='du -h'

if [ -d "$HOME/.nvm" ]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi
