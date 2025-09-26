# configVim
all about configuring Vim

## 1. First
`cp vimrc ~/.vimrc`

## 2. Create directories to store custom `.vim` files
`mkdir -p /usr/share/vim/vimfiles/ftplugin`

Aside: For more instructions on how to create multiple subdirectories at *different levels* or at the *same level* refer to the article [How to Create Multiple Subdirectories with One Linux Command](https://www.howtogeek.com/275069/how-to-create-multiple-subdirectories-with-one-linux-command/).

## 3. Copy the plugin files for specific languages
`cp <language>.vim /usr/share/vim/vimfiles/ftplugin/<language>-plugin.vim`

## 4. Copy the syntax (vim) files for specific languages
`cp <language>.vim /usr/share/vim/vimfiles/syntax/<language>.vim`
