set number
set relativenumber
set history=1000 " the history stored
set belloff=all " disable bell sound
set hlsearch

" utf-8
set encoding=utf-8
set fileencoding=utf-8

" Syntax highlighting
filetype plugin on
syntax on

" Color scheme
"set background=light
"colorscheme solarized
"if $TERM == 'linux'
"    set background=dark
"else
"    set background=light
"endif
colorscheme nord

" Visual wrapping
"set nowrap "display long line as just one line
set linebreak "prevent wrapping in the middle of word

" indent
filetype indent on
set autoindent
set smartindent

" indent guide
set list listchars=tab:\ \ ⇥,leadmultispace:┊\ \ \ ,trail:␣,nbsp:⍽,precedes:<,extends:>

" tab as space
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set backspace=indent,eol,start

set nrformats= "treat all numbers as decimal, regardless of whether they are padded with zeros.
set wildmenu " Tab complete EX commands

" auto-indentation for YAML files
augroup yaml_indent
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 indentkeys-=0# indentkeys-=<:>
augroup END

" 120 characters
" set colorcolumn=121
" highlight ColorColumn ctermbg=8

" fold mode
" set foldenable
" set foldmethod=indent

" Spell checking
" set spell
" set spelllang=en_us
autocmd FileType tex setlocal spell spelllang=en_us "spell check for TeX

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  <100 :  will save up to 100 lines for each register
"  :100  :  up to 100 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,<100,:100,%,n~/.viminfo

" the main function that restores the cursor position and its autocmd so that it gets triggered
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END


