set background=dark
call plug#begin('~/.vim/plugged')
"Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf.vim'
call plug#end()
