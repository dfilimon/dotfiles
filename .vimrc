" enable all features
set nocompatible

call pathogen#infect()
call yankstack#setup()

" Wrap too long lines
set wrap

" enable mouse support
set mouse=a

" Tabs are 2 characters
set tabstop=4

" (Auto)indent uses 2 characters
set shiftwidth=4

" spaces instead of tabs
set expandtab

" guess indentation
set smartindent

" Expand the command line using tab
set wildchar=<Tab>

" show line numbers
set number

" fold method for python
set foldmethod=syntax
set foldlevel=99

" powerful backspaces
set backspace=indent,eol,start

" jump to the matches while typing
set incsearch

" set max number of columns in a line (break lines when longer)
set textwidth=79

" history
set history=50

" 1000 undo levels
set undolevels=1000

" show a ruler
set ruler

" show partial commands
set showcmd

" show matching braces
set showmatch

" always display status line :)
set laststatus=2

" enable fancy symbols for powerlie
let g:Powerline_symbols='fancy'
"let g:Powerline_theme='skwp'
"let g:Powerline_colorscheme='skwp'

" set cursor line and cursor column (I'm blind without it :p)
set cursorline
set cursorcolumn

" write before hiding a buffer
set autowrite

" syntax highlight
syntax on

" Always show the menu, insert longest match
set completeopt=menuone,longest

set list

set splitright
set smartcase
set hlsearch

set backupdir=~/tmp

set ignorecase "Ignore case when searching
set smartcase

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif

" Enable option as alt and remove toolbar
if has("gui")
    if has("macvim")
        set macmeta
        " macmeta option to use option key as alt
        map <F1> :set invmacmeta<CR>
    endif
    set guioptions=-t
    colorscheme desert
else
    set t_Co=256
    set background=dark
    colorscheme solarized
endif

" Mappings
" For window switching
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h
" For tab switching
map <F7> gT
map <F8> gt
" Doc saving
map <F2> :w
" Maps Alt-[h,j,k,l] to resizing a window split
map <D-h> <C-W><
map <D-j> <C-W>-
map <D-k> <C-W>+
map <D-l> <C-W>>
nnoremap j gj
nnoremap k gk

if has('autocmd')
    filetype plugin indent on
    autocmd BufWritePre *.py,*.c,*.cc,*.cpp,*.h normal m`:%s/\s\+$//e``
    autocmd BufRead,BufNewFile *.rkt set filetype=scheme
    autocmd BufRead,BufNewFile *.wiki set filetype=creole

endif

let mapleader=","

map <leader>n :NERDTreeToggle<cr>
map <leader>g :GundoToggle<cr>
map <leader>bd :Bclose<cr>

nnoremap K i<cr><esc>

" Configure Haddock browser for OS X
let g:haddock_browser="open"
let g:haddock_browser_callformat="%s %s"

set nobackup
set nowritebackup
set noswapfile

map <C-t> :!make -f GNUmakefile<cr>
