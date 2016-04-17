source /usr/share/git/completion/git-prompt.sh 2> /dev/null

shopt -s histappend
shopt -s cdspell

export HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

HISTSIZE=1000
HISTFILESIZE=2000

GREEN="\[$(tput setaf 10)\]"
GREY="\[$(tput setaf 7)\]"
LIGHT_BLUE="\[$(tput setaf 51)\]"
RESET="\[$(tput sgr0)\]"
PS1="${GREEN}\u@\h:${RESET}\w${GREY}\$(__git_ps1)${LIGHT_BLUE}\$${RESET} "

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
