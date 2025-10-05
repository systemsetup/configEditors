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

## 3. Get `$VIMRUNTIME`
Open vim then
```
:echo $VIMRUNTIME
```
or `:!echo $VIMRUNTIME`.

In our example the path returned is `/usr/local/share/vim/vim91`

## 4. Copy the syntax (vim) files for specific languages
For Clojure its syntax `clojure.vim` by default is in
```
/usr/local/share/vim/vim91/syntax/clojure.vim
```
or insert custom vim files by doing
```
cp <language>.vim /usr/local/share/vim/vim91/syntax/<language>.vim
```

## 5. Create directories to store custom `.vim` files
```
mkdir -p ~/.vim/ftplugin
```
or
```
mkdir -p /usr/share/vim/vimfiles/ftplugin
```

Aside: For more instructions on how to create multiple subdirectories at *different levels* or at the *same level* refer to the article [How to Create Multiple Subdirectories with One Linux Command](https://www.howtogeek.com/275069/how-to-create-multiple-subdirectories-with-one-linux-command/).

## 6. Copy the plugin files for specific languages
`cp <language>-plugin.vim ~/.vim/ftplugin/<language>.vim`
