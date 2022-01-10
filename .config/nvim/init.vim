" General Setting

" enables syntax highlighting
syntax on

" disable mode text
set noshowmode

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set hlsearch
set ignorecase

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" signcolumn
set signcolumn=number

" line highlight
set cursorline


" Plugins
runtime ./plug.vim

" Theme
let g:tokyonight_style = 'night'
set background=dark

colorscheme tokyonight
