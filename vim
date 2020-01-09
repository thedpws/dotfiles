" ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄      ▄████████  ▄████████ 
"███    ███ ███  ▄██▀▀▀███▀▀▀██▄   ███    ███ ███    ███ 
"███    ███ ███▌ ███   ███   ███   ███    ███ ███    █▀  
"███    ███ ███▌ ███   ███   ███  ▄███▄▄▄▄██▀ ███        
"███    ███ ███▌ ███   ███   ███ ▀▀███▀▀▀▀▀   ███        
"███    ███ ███  ███   ███   ███ ▀███████████ ███    █▄  
"███    ███ ███  ███   ███   ███   ███    ███ ███    ███ 
" ▀██████▀  █▀    ▀█   ███   █▀    ███    ███ ████████▀  
"                                  ███    ███            



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'leafgarland/typescript-vim'
Plugin 'elixir-editors/vim-elixir'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


" Remaps
noremap ; :
noremap : ;


syntax enable
set tabstop=2		" 1 tab = N spaces
set softtabstop=2 	" 1 tab in editing = N spaces
set shiftwidth=2    " indenting is 4 spaces
set expandtab		" tabs are spaces

set number		    " show line numbers
set relativenumber  " show relative line numbers
set showcmd		    " show command in bottom bar
set cursorline		" highlight current line

set lazyredraw		" don't redraw always
set showmatch		" highlights matching brackets

set incsearch		" search as characters are entered
set hlsearch		" highlight the matches

set ruler           " show row,col

set autoindent
set smartindent
set cindent 

" Custom functions
"auto close {
function! s:CloseBracket()
    let line = getline('.')
    if line =~# '^\s*\(struct\|class\|enum\) '
        return "{\<Enter>};\<Esc>O"
    elseif searchpair('(', '', ')', 'bmn', '', line('.'))
        " Probably inside a function call. Close it off.
        return "{\<Enter>});\<Esc>O"
    else
        return "{\<Enter>}\<Esc>O"
    endif
endfunction
inoremap <expr> {<Enter> <SID>CloseBracket()


" Custom filetypes
au BufRead,BufNewFile *.g set filetype=antlr3
au BufRead,BufNewFile *.g4 set filetype=antlr4


" ocaml comments
autocmd FileType ocaml setlocal commentstring=\(\*\ %s\ \*\)

" pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Commands
autocmd BufWritePost .notes.md silent! !pandoc -t slidy -s .notes.md -o .notes.html --metadata pagetitle="$(pwd) Notes" &
