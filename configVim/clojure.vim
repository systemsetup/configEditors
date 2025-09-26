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

" Show statusline
set laststatus=2

" *********** Show current file and path ***********
" Define custom highlight color groups
hi User1 guifg=#ff0000 guibg=#1c1c1c " Red
hi User2 guifg=#00ff00 guibg=#1c1c1c " Green
hi User3 guifg=#ffff00 guibg=#1c1c1c " Yellow
hi User4 guifg=#0000ff guibg=#1c1c1c " Blue
hi User5 guifg=#ff00ff guibg=#1c1c1c " Magenta

function! Statusline()
  let status = ''

  " Red filename
  let status .= '%1*%<%f'
  let status .= '%1* ╠ ' " The U+2560 character
  let status .= '%f'     " filename
  let status .= ' ╣ *'   " The U+2563 character

  " Yellow full path filename
  let status .= '%3* %F*'  " Filename with full path
  return status
endfunction

set statusline=%!Statusline()

" set statusline=
" set statusline+=\ %!Statusline()
" set statusline+=\ %f
" set statusline+=\ %F
" set statusline+=\ %m

" Automatically wrap when beyond the screen
set wrap

setlocal iskeyword+=?,-,*,!,+,/,=,<,>,.,:,$

" There will be false positives, but this is better than missing the whole set
" of user-defined def* definitions.
setlocal define=\\v[(/]def(ault)@!\\S*

" Remove 't' from 'formatoptions' to avoid auto-wrapping code.
setlocal formatoptions-=t

" Lisp comments are routinely nested (e.g. ;;; SECTION HEADING)
setlocal comments=n:;
setlocal commentstring=;\ %s
