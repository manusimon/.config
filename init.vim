syntax on 

set mouse=a
set noerrorbells
set sw=2
set expandtab
set autoindent
set number
set rnu
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set tabstop=4
set softtabstop=4
set fileformat=unix
set shiftwidth=4
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set termguicolors
set cursorline
set colorcolumn=120
highlight ColoColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.local/share/nvim/plugged')

"Temas
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'

"Visualizacion
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'

"Funciuonalidad
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'ddollar/nerdcommenter'
Plug 'sirver/ultisnips'


"Autocompletado
Plug 'jiangmiao/auto-pairs'

"Pestañas
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let mapleader = " "

set background=dark
let ayucolor="dark"
let g:gruvox_contrast_dark="hard"
colorscheme onedark

nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

noremap <leader>w :w<CR>

nmap <leader>f <Plug>(easymotion-s2)
let g:EasyMotion_smartcase=1

"Configuracion nerdtree
let g:NERDTreeChDirMode=2
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1

map <leader><tab> :NERDTreeToggle<CR>

"Configuracion devicons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

"Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

"Ultisnips
let g:UltiSnipsSnippetsDirectories=[$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<tab>"

"Python
let g:python3_host_prog='/usr/bin/python3'
let g:python_host_prog='/usr/bin/python'
let g:loaded_python3_provider=0
let g:loaded_python_provider=0
