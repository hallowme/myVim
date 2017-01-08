# My (Neo) Vim 


## Plugin manager


There is my **vimrc**. I use vim-plug as plugin manager. If it doesn't exist in your _.vim/plugged/autoload/_, it will be download with:
```bash
if empty(glob("~/.vim/autoload/plug.vim"))
		:! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
```
**OR** 

```bash
if empty(glob("~/.config/nvim/autoload/plug.vim"))
		:! curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
```

Then you just need to run:
``` vimrc
:PlugInstall
```
and it will install all missing plugins in _~/.vim/plugged/_. You can change this default folder with this line:
``` vimrc
call plug#begin('~/.vim/plugged')
```
**OR**
``` vimrc
call plug#begin('~/.config/nvim/plugged')
```


## Installed plugin
-------------------

Currently I have this features:

* the nerdtree : an explorer file in the consol
* vim-airline : make my vim more beautiful
* supetab : tab completion
* auto-pairs : match the matching parenthesis
* deoplete : complete most of the langage
* tcomment : easy comment
* vim-indent-guides : display indentation level
* molokai : other vim theme
* tagbar : show your function like in a ide
* vim-go : go ide for vim
* neosnippet/neosnippet-snippets : the snippets for a lot of language

