color Atom
set t_Co=256
set wrap
set number
set mouse=ia
set clipboard=unnamed

syntax enable

ino jj                <esc>
ino kk                <esc>
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
nn <leader>lo         iLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
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

vmap <C-c>            :w !pbcopy<cr><cr>
imap <C-x>            <Esc>:set paste<cr>:r !pbpaste<cr>:set nopaste<cr>
nmap <C-x>            i<C-x>

let CoVim_default_name = 'akosipc'
let CoVim_default_port = '63363'

let g:ctrlp_custom_ignore = { 'dir':  '^/_site/|/deps/' }

let g:ScreenImpl = 'Tmux'
let g:ScreenShellTmuxInitArgs = '-2'
let g:ScreenShellQuitOnVimExit = 1
let g:ScreenShellWidth = 60
