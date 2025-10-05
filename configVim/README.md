# configVim
all about configuring Vim

## 1. First
```
cp vimrc ~/.vimrc
```
In FreeBSD
```
cp /usr/local/etc/vim/vimrc ~/.vimrc
```

## 2. Append `.vimrc`
Copy & paste the contents of `append_vimrc` at the bottom of `.vimrc` file.

## 3. Create directories to store custom `.vim` files
```
mkdir -p /usr/share/vim/vimfiles/ftplugin
mkdir -p /usr/share/vim/vimfiles/syntax
```

Aside: For more instructions on how to create multiple subdirectories at *different levels* or at the *same level* refer to the article [How to Create Multiple Subdirectories with One Linux Command](https://www.howtogeek.com/275069/how-to-create-multiple-subdirectories-with-one-linux-command/).

## 4. Copy the plugin files for specific languages
`cp <language>-plugin.vim /usr/share/vim/vimfiles/ftplugin/<language>.vim`

## 5. Copy the syntax (vim) files for specific languages
`cp <language>.vim /usr/share/vim/vimfiles/syntax/<language>.vim`

**NOTE:**
* `:!echo $VIMRUNTIME` to get the `$VIMRUNTIME` path
