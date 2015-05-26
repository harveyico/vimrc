set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Color Schemes
Plugin 'tomasr/molokai'
Plugin 'zaiste/Atom'
Plugin 'tpope/vim-vividchalk'
Plugin 'whatyouhide/vim-gotham'

" Files
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Utility
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tsaleh/vim-align'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/screen'
Plugin 'Spaceghost/vim-matchit'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/scratch.vim'


" Fancy Stuvves
Plugin 'bling/vim-airline'
Plugin 'michaeljsmith/vim-indent-object'

" Ruby / Rails
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" HTML / CSS / JS
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'wavded/vim-stylus'
Plugin 'lunaru/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'alfredodeza/jacinto.vim'
Plugin 'heartsentwined/vim-emblem'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" Git
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'

call vundle#end()  

" ctrl-p
let g:ctrlp_working_path_mode = ''

" vim-indent-object
let g:indentobject_meaningful_indentition = ["haml", "sass", "yaml", "markdown"]

" yankring 
let g:yankring_history_dir = '~/.vim/tmp/'
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'


" Formatting
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
autocmd User Rails set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.jade 	setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.html 	setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.slim 	setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Custom
noremap <left> 	<nop>
noremap <up> 	<nop>
noremap <down> 	<nop>
noremap <right>	<nop>
vnoremap < <gv
vnoremap > >gv
nnoremap / /\v
vnoremap / /\v

filetype plugin indent on
syntax enable
set switchbuf=useopen

set autoread
set backspace=indent,eol,start
set binary
set cinoptions=:0,(s,u0,U1,g0,t0
set completeopt=menuone,preview
set nolazyredraw
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:␣
set notimeout
set ttimeout
set ttimeoutlen=10
set showbreak=↪
set encoding=utf8
set undodir=~/.vim/tmp/undo//
set undofile
set undolevels=3000
set undoreload=10000
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backup
set noswapfile
set encoding=utf-8
set autoindent
set relativenumber
set winwidth=83
set numberwidth=3
set modelines=0
set noeol
set tabstop=2
set softtabstop=2
set textwidth=0
set shiftwidth=2
set laststatus=2
set expandtab
set wrap
set formatoptions=qrn1
set ignorecase
set smartcase
set showmatch
set gdefault
set hlsearch
if executable('/bin/zsh')
  set shell=/bin/zsh
endif
set showcmd
set exrc
set secure
set matchtime=2
set completeopt=longest,menuone,preview

set syntax=enable

command! W :w

autocmd BufWritePre * :%s/\s\+$//e

au!
au WinLeave * set nocursorline
au InsertEnter * set nocursorline
au WinEnter * set cursorline
au InsertLeave * set cursorline

source ~/.vim/after.vim
