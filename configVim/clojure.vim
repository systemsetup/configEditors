" To save this python.vim file
" whereis vim
" cp clojure.vim /usr/share/vim/vimfiles/ftplugin/clojure.vim
" clojure.vim will then be loaded after ~/.vimrc

" example https://github.com/guns/vim-clojure-static/blob/master/ftplugin/clojure.vim

"if exists("b:did_ftplugin")
"	finish
"endif

" http://vim.wikia.com/wiki/Keep_your_vimrc_file_clean
let b:did_ftplugin = 1

"let s:cpo_save = &cpo
"set cpo&vim

"let b:undo_ftplugin = 'setlocal iskeyword< define< formatoptions< comments< commentstring< lispwords<'

" Show line number
set number

" Automatically wrap when beyond the screen
set wrap

" Turn syntax highlighting on.
syntax on

" Highlight cursor line underneath the cursor horizontally.
" color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Show statusline
set laststatus=2

" *********** Show current file and path ***********
" Define custom highlight color groups
hi User1 guifg=#ff0000 guibg=#1c1c1c " Red
hi User2 guifg=#00ff00 guibg=#1c1c1c " Green
hi User3 guifg=#ffff00 guibg=#1c1c1c " Yellow
hi User4 guifg=#0000ff guibg=#1c1c1c " Blue
hi User5 guifg=#ff00ff guibg=#1c1c1c " Magenta

function! StatuslineColor()
  let status = ''

  " Red filename
  let status .= '%#User1#%<%f*'
  let status .= '%2*%m%r%h%*'

  " Yellow full path filename
  let status .= '%='
  let status .= '%3*╠%*'
  let status .= '%4* %1,%c%V %*'
  let status .= '%5* %P%*'
  return status
endfunction

function! Statusline()
  let status = ''
  let status .= ' ╠ '    " The U+2560 character
  let status .= '%f'     " filename
  let status .= ' ╣ '    " The U+2563 character
  let status .= ' %F'    " Filename with full path
  let status .= '%='     " right align
  let status .= 'col: %c'" column info
  return status
endfunction

set statusline=%!Statusline()

" hi Status1 guifg=#008080 guibg=#fabd2f
" hi Status2 guifg=#F6955B guibg=#38A89D
" set statusline=%#Status1#hello\|%#Status2#world

" set statusline=
" set statusline+=\ %!Statusline()
" set statusline+=\ %f
" set statusline+=\ %F
" set statusline+=\ %m

setlocal iskeyword+=?,-,*,!,+,/,=,<,>,.,:,$

" There will be false positives, but this is better than missing the whole set
" of user-defined def* definitions.
setlocal define=\\v[(/]def(ault)@!\\S*

" Remove 't' from 'formatoptions' to avoid auto-wrapping code.
setlocal formatoptions-=t

" Lisp comments are routinely nested (e.g. ;;; SECTION HEADING)
setlocal comments=n:;
setlocal commentstring=;\ %s
