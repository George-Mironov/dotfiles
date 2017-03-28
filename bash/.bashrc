shopt -s histappend
shopt -s cdspell dirspell autocd
shopt -s no_empty_cmd_completion

set -o ignoreeof

export HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export EDITOR=vim

HISTSIZE=1000
HISTFILESIZE=2000

GREEN="\[$(tput setaf 10)\]"
GREY="\[$(tput setaf 7)\]"
LIGHT_BLUE="\[$(tput setaf 51)\]"
RESET="\[$(tput sgr0)\]"
PS1="${GREEN}\u@\h:${RESET}\w${GREY}\$(__git_ps1)${LIGHT_BLUE}\$${RESET} "

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alhF'
alias du='du -sh'
alias da='du -c * .[!.]*'
alias vi='vim'

if [ -d "$HOME/bin" ]; then
    PATH=$PATH:$HOME/bin
fi

if which tmux >/dev/null 2>&1; then
    test -z "$TMUX" && ! shopt -q login_shell && (tmux attach || tmux new-session)
fi

stty -ixon

if [ -f "$HOME/.spbashrc" ]; then
    . $HOME/.spbashrc
fi
