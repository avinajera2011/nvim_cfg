set relativenumber
set splitright
set number
set nocompatible
set tabstop=4
set colorcolumn=120
set expandtab
set cursorline
set hlsearch
set incsearch
set splitright
set splitbelow
set clipboard=unnamed
set mouse=a
set numberwidth=1
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
map <C-m> :NERDTree<CR> 
map <F11> :new term://powershell<CR><Leader>d<Leader>d
map <C-t> :vnew 
map <C-q> :q!<CR>
map <C-s> :w<CR>
nnoremap <silent> <Leader>i :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>d :exe "resize " . (winheight(0) * 2/3)<CR>

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
Plug 'ervandew/supertab'
Plug 'https://github.com/vim-python/python-syntax'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
call plug#end()

# Disable this options before install all plugins from beginning and then enable it
let g:python3_host_prog='C:\Anaconda3\python.exe'
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:airline_theme='dark' " <theme> is a valid theme name
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"
"let g:neomake_python_enabled_makers = ['pylint']
"call neomake#configure#automake('nrwi', 500)
let g:highlightedyank_highlight_duration = 1000
colorscheme gruvbox
set background=dark
let g:python_highlight_all = 1
