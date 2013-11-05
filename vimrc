set nocompatible " must be the first line

" Pathogen
execute pathogen#infect()

filetype on
filetype indent on
filetype plugin on

" Always show status line
set laststatus=2

" Set status line
set statusline=%F%m%r%h%w\ [format\ %{&ff}]\ [type\ %Y]\ [ASCII\ \%03.3b]\ [hex\ \%02.2B]\ [pos\ %l,%v\ %p%%]\ [len\ %L]

" When wrapping, try to break at characters in breakat
set linebreak

" When wrapping, break at these characters
set breakat=\ ^I!@*-+;:,./?

" Character to show that a line is wrapped
set showbreak=>

" Highlight search matches
set incsearch hlsearch

" Shwo line numbers
set nu

" highlight the cursor's line
set cul

" Omnicomplete
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "<Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "<Down>" : ""<CR>'

" Set 256 color mode
set t_Co=256

" Enable syntax highlighting
syntax on

" Set dark background
set background=dark

" Set color scheme
colorscheme solarized

" Enable syntax folding
"set foldmethod=syntax

" Enable autoindenting
set ai

" Backspace over anything
set backspace=indent,eol,start
