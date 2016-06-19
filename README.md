#My Vim 
======

## Plugin manager
-----------------

There is my **vimrc**. I use vim-plug as plugin manager. If it doesn't exist in your _.vim/autoload/_, it will be download with:
```bash
if empty(glob("~/.vim/autoload/plug.vim"))
		:! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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

## Installed plugin
-------------------

Currently I have this features:

* the nerdtree : an explorer file in the consol
* vim-airline : make my vim more beautiful
* supetab : tab completion
* vim-fugitive : git plugin for vim
* ctrlp : easy opening files
* neocomplete : vim code completion
* delimitmate : manage the delimitor (like brackets...)
* ultisnpis : vim snippest
* vim-multiple-cursors : multiple editing like *Sublime Text*
* taglist : manage my ctags
* python-monde : full ide for python
* tcomment : easy comment



## Shortcuts
------------

The shortcuts mapped are:

* `` map <F2> :bn <CR> `` : change to next buffer
* `` map <F3> :w <CR> `` : save the current file
* `` map <F4> :NERDTreeToggle <CR> `` : toogle the file explorer
* `` map <F5> gcc<ESC> : It will toogle comment selected line. 
* `` map <F6> :set hlsearch <CR>`` : set the highlight search
* `` map <S-F6> :set hlsearch <CR>`` : disable it
* `` map <F7> :bd <CR>`` : close the current buffer
* `` map <S-F7> :q <CR>`` : close the editor
* `` map <F8> :make `` : using makefile
* `` map <F9> :Tlist <CR> <C-W><C-H>`` : open/close tag list's current file
* `` inoremap <F12> <C-x><C-o>`` : using ctags to complete methode.

## Settings
-----------

For the tags, you need to change this line:
``` vimrc
set tags+=~/.my_tags/
```
with your own ctags folder.

You need to support 256 colors because of : ``set t_Co=256``

``` vimrc
set history=256
```
Keep 256 undo.

To navigate faster.

```vimrc
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
```

