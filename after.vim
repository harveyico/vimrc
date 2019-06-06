color twilight256
"let g:feature_filtype='behat'
set fdm=manual
set t_Co=256
set nowrap
set number
set norelativenumber
set mouse=ia
set clipboard=unnamed
set colorcolumn=80
"set backupcopy=yes
set ttyfast
set lazyredraw

syntax enable

ino jj                <esc>
ino kk                <esc>
nn vue                :0r ~/.vim/vue/template.txt<CR>
nn vuem                :0r ~/.vim/vue/mutate.txt<CR>
nn vueq                :0r ~/.vim/vue/query.txt<CR>
nn <tab>              <c-w>w
nn <leader>a          ggVG
nn <leader>y          yy
nn <leader>qq         :qa!<cr>
nn <leader>wq         :wqa<cr>
nn <leader>vs         <c-w>v
nn <leader>hs         :split<cr>
nn <leader>gb         :Gblame<cr>
nn <leader>gs         :Gstatus<CR>
nn <leader>gd         :Gdiff<cr>
nn <leader>ga         :Git add .<cr>
nn <leader>gc         :Git commit -av<cr>
nn <leader>n          :NERDTreeToggle<cr>
nn <leader>lo         Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
nn <leader>t          :tabnew<cr>
nn <leader>tq         :tabclose<cr>
nn <leader>yr         :YRShow<cr>
nn <leader>st         :Scratch<cr>
nn <leader>sr         :ScreenShellVertical<CR>
nn <leader>run        :call ScreenShellSend("clear && rspec ".@%)<CR>
nn <leader>ruc        :call ScreenSheelSend("clear && cucumber --format=pretty ".@%)<CR>
nn <leader>bn         :call ScreenShellSend("clear && bundle install")<CR>
nn <leader>sx         :ScreenQuit<CR>
nn <leader>np         :set nopaste<CR>
nn <leader>pp         :set paste<cr>

nn <leader>"          I"<esc>Ea"<esc>
nn <leader>'          I'<esc>Ea'<esc>
nn <leader>{          I{<esc>Ea}<esc>
nn <leader>]          I[<esc>Ea]<esc>
nn <leader>(          I(<esc>Ea)<esc>

nn <leader><leader>"  I"<esc>A"<esc>
nn <leader><leader>'  I'<esc>A'<esc>
nn <leader><leader>{  I{<esc>A}<esc>
nn <leader><leader>[  I[<esc>A]<esc>
nn <leader><leader>(  I(<esc>A)<esc>


au BufRead,BufNewFile *.deface  set filetype=html
au BufRead,BufNewFile *.ejs     set filetype=html
au BufRead,BufNewFile *.embled  set filetype=html
au BufRead,BufNewFile *.eex     set filetype=html
au BufRead,BufNewFile *.less    set filetype=scss
au BufRead,BufNewFile *.coffee  set filetype=coffee
au BufRead,BufNewFile *.js.liquid  set filetype=javascript

vmap <C-c>            :w !pbcopy<cr><cr>
imap <C-x>            <Esc>:set paste<cr>:r !pbpaste<cr>:set nopaste<cr>
nmap <C-x>            i<C-x>
map <Tab> :NERDTreeToggle <cr>
vmap <C-p>            :FZF<cr>
nmap <C-p>            :FZF<cr>

command! Fzfc call fzf#run(fzf#wrap(
  \ {'source': 'git ls-files --exclude-standard --others --modified'}))
noremap <Leader>] :Fzfc<cr>

let CoVim_default_name = 'hyveria'
let CoVim_default_port = '63363'

"let g:ctrlp_custom_ignore = { 'dir':  '^/_site/|/deps/tmp/\|public/assets\|public/packs\|public/packs-test\|public/uploads\|public/system\' }

let g:ScreenImpl = 'Tmux'
let g:ScreenShellTmuxInitArgs = '-2'
let g:ScreenShellQuitOnVimExit = 1
let g:ScreenShellWidth = 60

let mapleader=","
autocmd BufWritePre * :%s/\s\+$//e

let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#autoformat = 0

let NERDTreeIgnore=['\.DS_Store$', '\.git$', 'node_modules'] " ignore files in nerd tree

if filereadable('.prettierrc')
  "autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
endif

