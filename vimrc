" Initialize Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" End intializing Vundle

syntax on
filetype plugin indent on

" Indentation for python
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=8 expandtab

" Sets how many lines of history VIM has to remember
set history=500

" Miscellaneous Setup
set ruler
set nu
set expandtab " space instead of tab
set tabstop=2 " 2 spaces = 1 tab
set shiftwidth=2 " size of an indent
let mapleader=" "

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Backspace setup
set backspace=indent,eol,start

" Solarized stuff
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Indentation stuff
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238

" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  en
    return ''
endfunction

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F\ %=Line:\ %l

" Spell Checking
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Turn backup off
set nobackup
set nowb
set noswapfile

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Make :E work
cabbrev E Explore

" 80 column limit
highlight ColorColumn ctermbg=236
set colorcolumn=80
