set number
syntax on
set hls
set history=1000 " the history stored

set nowrap "display long line as just one line

" indent
set autoindent
set smartindent

" tab as space
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

set nrformats= "treat all numbers as decimal, regardless of whether they are padded with zeros.
set wildmenu " Tab complete EX commands

" ruler follow PEP8
set colorcolumn=73,80
highlight ColorColumn ctermbg=8

" fold mode
" set foldenable
set foldmethod=indent

" set spell " highlight miss-spelled words

