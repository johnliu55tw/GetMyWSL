" Load the plugins installed by vim-plug
source $HOME/.config/nvim/init-plug.vim

" Toggle relative and absolute line number while switching mode and focus
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" nvim starts slow for *.py files
" See https://github.com/neovim/neovim/issues/2437
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

"General settings
set nu
set ruler
set termguicolors
syntax on
set inccommand=nosplit
set lazyredraw
set smartcase
set ignorecase
set mouse=a

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
" Highlight columns
let &colorcolumn="80,100"
highlight ColorColumn guibg=#8693AB
" Set the leader key to <Space>
nnoremap <SPACE> <Nop>
let mapleader=' '

" " Copy to clipboard
vnoremap <Leader>y  "+y
nnoremap <Leader>Y  "+yg
nnoremap <Leader>y  "+y
" " Paste from clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

" Indention
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Buffer management shortcuts
set hidden
map <C-m> :bnext<CR>
map <C-n> :bprevious<CR>
map <C-q> :bp<bar>sp<bar>bn<bar>bd<CR>

" Disable indentLine in *.json file. See Yggdroot/indentLine/issues/172
autocmd Filetype json let g:indentLine_enabled = 0

" Load all the configs
for f in glob('$HOME/.config/nvim/config.d/*.vim', 0, 1)
    execute 'source' f
endfor
