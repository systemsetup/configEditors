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

" Show relative path of the current file
set statusline=
set statusline+=\ %f
set statusline+=\ %m

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
