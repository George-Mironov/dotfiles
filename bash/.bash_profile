if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

if [ -f "$HOME/.spbash_profile" ]; then
    . "$HOME/.spbash_profile"
fi


export LFS=/mnt/lfs

export PATH="$HOME/.cargo/bin:$PATH"
