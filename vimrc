" syntax colorz
syntax on
" enable filetype detection, indentation and the like
filetype plugin indent on

""" CUSTOM KEYS
" allow semicolon to activate colon command input (no shifting)
map ; :
" tab edit something in the same directory, basically opens up a tabedit
" command with the current file's directory (relative to the working dir)
map ,t :tabe <C-R>=expand("%:h") . "/" <CR>
" tab edit file in the virtualenv 
" TODO deal with arbitrary virtualenv and maybe make it python specific?
map ,v :tabe virtualenv_run/lib/python2.7/site-packages/
" = to go right in the tabbar
nmap = gt
" = to go left in the tabbar
nmap - gT


""" tabs and shit
" expand tabs into spaces (TODO make this not happen in go?)
set expandtab
" I like a 4 column tabstop
set tabstop=4
" I continue to like a 4 column tabstop in insert mode (do all tabs or spaces)
set softtabstop=4
" autoindent is also 4
set shiftwidth=4

" always show the status line
set laststatus=2

" show line numbers
set number
" show line under cursor
set cursorline
" highlight search terms
set hlsearch


"vim-plug config
call plug#begin('~/.vim/plugged')
" fugitive is dabes for git stuff
Plug 'tpope/vim-fugitive'
" Python mode for python linting and code folding, mostly
Plug 'klen/python-mode', { 'for': 'python' }
" go mode
Plug 'fatih/vim-go', { 'for': 'go' }
" toml syntax
Plug 'cespare/vim-toml', { 'for': 'toml' }
call plug#end()

if filereadable($HOME . "/.vimrc.local")
    source $HOME/.vimrc.local
endif
