dotfiles=(".bashrc" ".tmux.conf" ".vimrc" ".vimperatorrc" ".urxvt" ".Xresources")

for dotfile in ${dotfiles[@]}; do
    if [ ! -L "$HOME/${dotfile}" ]; then
        [ -d "$HOME/${dotfile}" ] && rm -fr "$HOME/${dotfile}"
        ln -sf "$HOME/dotfiles/${dotfile}" "$HOME/${dotfile}"
    fi 
done

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"
fi
