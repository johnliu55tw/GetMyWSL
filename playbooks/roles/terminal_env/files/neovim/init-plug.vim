" Install (if not exists) vim-plug
" See https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'cespare/vim-toml'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
call plug#end()
