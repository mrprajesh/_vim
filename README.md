MY VIMRC
=========

This started as my vimrc for windows but into development, I realised that it worked actually better than my original .vimrc for linux. 
So I present to you, fully cross-compatible vimrc for linux and Windows.

All you need to do is install Vundle for vim and put this in your home folder 

Path : ~/.vimrc for linux

       $HOME/_vimrc for windows
     
Instructions on installing Vundle : 
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Yes, it's that easy.

For windows, you need to install git and curl before cloning to $HOME/vimfiles/bundle/Vundle.vim


Install plugins from inside vim by running the command
```
:PluginInstall
```
