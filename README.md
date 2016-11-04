Vim setup.

# Windows Install

Clone the repository to where the vim files directory should be (vimfiles for windows, .vimrc elsewhere):
```ShellSession
git clone https://github.com/hombredequeso/vimfiles.git %HOMEPATH%/vimfiles
```

Symlink .vimrc from the repository to the required location of the .vimrc.  
(Note: on windows, mklink /H symbolic_file_to_create real_file)  
```ShellSession
mklink /H %HOMEPATH%\.vimrc" %HOMEPATH%\vimfiles\.vimrc"
```

Clone Vundle to bundle:  
```ShellSession
git clone https://github.com/VundleVim/Vundle.vim.git %HOMEPATH%/vimfiles/bundle/Vundle.vim
```

Install plugins:  
```ShellSession
[g]vim +PluginInstall +qall
```  
or, start gvim/vim and run  
```VimL
:PluginInstall
```

