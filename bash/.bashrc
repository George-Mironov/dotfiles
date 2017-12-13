shopt -s histappend
shopt -s cdspell dirspell autocd
shopt -s no_empty_cmd_completion

set -o ignoreeof

export HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export EDITOR=vim

HISTSIZE=10000
HISTFILESIZE=20000

BOLD="\[$(tput bold)\]"
GREEN="\[$(tput setaf 10)\]"
GREY="\[$(tput setaf 7)\]"
LIGHT_BLUE="\[$(tput setaf 14)\]"
RESET="\[$(tput sgr0)\]"
PS1="${BOLD}${GREEN}\u@\h:${RESET}${BOLD}\w${GREY}\$(__git_ps1)${LIGHT_BLUE}\$${RESET} "

alias ls='ls --color=auto'
alias grep='grep --color=auto'
if hash exa 2>/dev/null; 
then 
    alias ll='exa -alF'
else
    alias ll='ls -alhF'
fi
alias du='du -sh'
alias da='du -c * .[!.]*'
alias vi='vim'
alias sv='source venv/bin/activate'
alias sudo='sudo '

if [ -d "$HOME/bin" ]; then
    PATH=$PATH:$HOME/bin
fi

if [ -f "$HOME/.spbashrc" ]; then
    . $HOME/.spbashrc
fi

stty -ixon

if which tmux >/dev/null 2>&1; then
    test -z "$TMUX" && ! shopt -q login_shell && (tmux attach || tmux new-session)
fi
