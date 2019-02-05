shopt -s histappend
shopt -s cdspell dirspell autocd
shopt -s no_empty_cmd_completion

set -o ignoreeof

export HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export EDITOR=vim

HISTSIZE=10000000
HISTFILESIZE=20000000

BOLD="\[$(tput bold)\]"
GREEN="\[$(tput setaf 2)\]"
GREY="\[$(tput setaf 7)\]"
LIGHT_BLUE="\[$(tput setaf 14)\]"
RESET="\[$(tput sgr0)\]"
PS1="${BOLD}${GREEN}\u@\h ${GREY}\D{%T} ${RESET}${BOLD}[\w]${GREY}\$(__git_ps1)${LIGHT_BLUE}\n#${RESET} "

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -AlohF'
alias du='du -sh'
alias da='du -c * .[!.]*'
alias vi='vim'
alias sv='source venv/bin/activate'
alias sudo='sudo '
alias py='python'
alias ipy='ipython'
alias o='xdg-open'
alias mkdir='mkdir -p'
alias cp='cp -r'
alias scp='scp -r'
alias cl='clear'
alias df='df -x"squashfs"'

if [ -f "$HOME/.spbashrc" ]; then
    . $HOME/.spbashrc
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#stty -ixon

#if which tmux >/dev/null 2>&1; then
#    test -z "$TMUX" && ! shopt -q login_shell && (tmux attach || tmux new-session)
#fi

function rn {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
