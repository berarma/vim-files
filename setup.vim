" Auto-install vim-plug
if empty(glob('autoload/plug.vim')) 
    silent !curl -fLo autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

source vimrc
