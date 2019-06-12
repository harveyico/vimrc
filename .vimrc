set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf8

call vundle#begin()

Plugin 'vim-scripts/twilight256.vim'
"Plugin 'gmarik/Vundle.vim'

" Color Schemes
"Plugin 'nielsmadan/harlequin'
"Plugin 'tomasr/molokai'
"Plugin 'roosta/vim-srcery'

" Colorizer
"Plugin 'ap/vim-css-color'

" Files
Plugin 'scrooloose/nerdtree'
"Plugin 'kien/ctrlp.vim'
"Plugin '/usr/local/opt/fzf'
Plugin 'junegunn/fzf.vim'
set rtp+=/usr/local/opt/fzf

" Utility
Plugin 'tpope/vim-surround'
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

" Prettier
Plugin 'prettier/vim-prettier'

" Fancy Stuvves
Plugin 'bling/vim-airline'
Plugin 'michaeljsmith/vim-indent-object'
"Plugin 'austintaylor/vim-indentobject'

" Ruby / Rails
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
"Plugin 'janko-m/vim-test'

" PHP
"Plugin 'StanAngeloff/php.vim'
"Plugin '2072/PHP-Indenting-for-VIm'

" Cucumber
"Plugin 'veloce/vim-behat'

" HTML / CSS / JS
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-haml'
"Plugin 'tpope/vim-markdown'
"Plugin 'wavded/vim-stylus'
"Plugin 'lunaru/vim-less'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'alfredodeza/jacinto.vim'
"Plugin 'heartsentwined/vim-emblem'
Plugin 'nono/vim-handlebars'
Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'jparise/vim-graphql'

" Vue
Plugin 'harveyico/vim-vue'
"Plugin 'darthmall/vim-vue'
"Plugin 'iloginow/vim-vue'
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction

" Elixir
"Plugin 'elixir-lang/vim-elixir'

" Git
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'

call vundle#end()

" Groovy
"Plugin 'vim-scripts/groovy.vim'

" ctrl-p
"let g:ctrlp_working_path_mode = ''
"let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"if executable('ag')
  "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"endif

" vim-indent-object
let g:indentobject_meaningful_indentition = ["haml", "sass", "yaml", "markdown"]

" yankring
let g:yankring_history_dir = '~/.vim/tmp'
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'


" Formatting
autocmd FileType ruby,eruby,yaml,php set ai sw=2 sts=2 et
autocmd User Rails set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.html 	setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.php    setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
" nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> <C-b> :TestFile " t Ctrl+b
" nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
" nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
" nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+b

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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
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

au!
au WinLeave * set nocursorline
au InsertEnter * set nocursorline
au WinEnter * set cursorline
au InsertLeave * set cursorline

source ~/.vim/after.vim
