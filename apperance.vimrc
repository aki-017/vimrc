" Color Scheme {{{
" 256色
set t_Co=256
set t_Sf=[3%dm
set t_Sb=[4%dm
" Set the color scheme.
colorscheme yuroyoro256

" }}}

set showmatch
set number
set list
set listchars=tab:\ >,trail:_,extends:>,precedes:\ 
autocmd ColorScheme * hi SpecialKey term=underline guifg=grey15 ctermfg=233

set display=uhex
augroup highlightIdegraphicSpace
    autocmd! highlightIdegraphicSpace
    autocmd Colorscheme * highlight ZenkakuSpace cterm=underline ctermbg=lightblue guibg=darkgray
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
augroup END

set cursorline
augroup cch
autocmd! cch
autocmd WinLeave * set nocursorline
autocmd WinEnter,BufRead * set cursorline
augroup END

set lazyredraw
set ttyfast
syntax enable

" hi clear CursorLine
hi CursorLine gui=underline cterm=none
