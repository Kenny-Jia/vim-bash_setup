set background=dark
call plug#begin('~/.vim/plugged')
"Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/rainbow_parentheses.vim'
if !has('gui_running')
	set t_Co=256
endif
let g:lightline = {
	\ 'colorscheme': 'powerline',
	\ }
call plug#end()
