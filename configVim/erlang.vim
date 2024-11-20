" To save this python.vim file
" whereis vim
" cp erlang.vim /usr/share/vim/vimfiles/ftplugin/erlang.vim
" erlang.vim will then be loaded after ~/.vimrc

" example https://raw.githubusercontent.com/pangloss/vim-erlang/a5b881eb1ed5ab32a0a51a473170d41b86698ecd/syntax/erlang.vim

" http://vim.wikia.com/wiki/Keep_your_vimrc_file_clean
let b:did_ftplugin = 1

" Erlang is case sensitive
syn case match

" enable syntax highlighting
syntax enable

" show line numbers
setlocal number

" set tabs to have 4 spaces
setlocal ts=2

" indent when moving to the next line while writing code
setlocal autoindent

" expand tabs into spaces
setlocal expandtab

" when using the >> or << commands, shift lines by 4 spaces
setlocal shiftwidth=4

" show a visual line under the cursor's current line
setlocal cursorline

" show the matching part of the pair for [] {} and ()
setlocal showmatch

" enable all Python syntax highlighting features
"let python_highlight_all = 1
