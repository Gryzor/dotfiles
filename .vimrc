set t_Co=256
colors zenburn

syntax on
setl number
setl relativenumber 

set ruler

set splitbelow "split below the current, like tmux
set splitright "split to the right of current, like tmux

" Make it obvious where the 100th character is
" set textwidth=100
set colorcolumn=100
set wrap linebreak nolist

set backspace=2 " delete normally like the rest of the world (in insert mode)

set ic is hls " ignore case, show partial matches, highlight matching
 
" Escape insert mode with 'ii' (if you're trying to type 'virii', good luck)
inoremap ii <Esc>

" Navigate between splits without having to do ctrl-w + 'direction', just use
" ctrl + 'direction'
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make adjusting split sizes friendlier
"noremap <silent> <C-Left> :vertical resize +3<CR>
"noremap <silent> <C-Right> :vertical resize -3<CR>
"noremap <silent> <C-Up> :resize +3<CR>
"noremap <silent> <C-Down> :resize +3<CR>

" Change 2 split windows from ver tto horiz and viceverse
"map <Leader>th <C-w>t<C-w>H
"map <Leader>tk <C-w>t<C-w>K

" Toggle Paste Mode
set pastetoggle=<F2>

" Download vim-plug if it's not there
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Initialize Plug-ins
call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
"Plug 'arrufat/vala.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'

" End Plug-ins system
call plug#end()
