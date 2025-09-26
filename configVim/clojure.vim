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

" Show current file and path
function! Statusline()
  let status = ''
  let status .= '%<%f %h%m%r'
  let status .= '%='
  let status .= ' ╠ '
  let status .= '%-14.(%l,%c%V%)'
  let status .= ' %P'
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
