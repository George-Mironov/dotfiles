if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
