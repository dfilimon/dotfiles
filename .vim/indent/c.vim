set expandtab                         
set tabstop=8                           " tabstops of 8
set shiftwidth=8                        " indents of 8
set textwidth=78                        " screen in 80 columns wide, wrap at 78
set autoindent smartindent              " turn on auto/smart indenting
set smarttab                            " make <tab> and <backspace> smarter
set backspace=eol,start,indent          " allow backspacing over indent, eol, & start
syn match ErrorLeadSpace /^ \+/         " highlight any leading spaces
syn match ErrorTailSpace / \+$/         " highlight any trailing spaces
set formatoptions=tcqlron
set cinoptions=:0,l1,t0,g0

