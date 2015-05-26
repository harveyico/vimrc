## Installation

Clone vim:
`git clone git@github.com:sanzo12/vimrc.git ~/.vim/`

Symlink vimrc:
`ln -nfs ~/.vim/.vimrc ~/.vimrc`

Make tmp folders:
```
cd ~/.vim
mkdir tmp tmp/undo tmp/swap tmp/backup
```

Install vundle
`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Run:
`vim +BundleInstall +qall`
