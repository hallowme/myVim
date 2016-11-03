#My (Neo)Vim 
======

## Plugin manager
-----------------

There is my **init.vim**. I use vim-plug as plugin manager. If it doesn't exist in your _..config/nvim/autoload/_, it will be download with:
```bash
if empty(glob("~/.config/nvim/autoload/plug.vim"))
		:! curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
```
Then you just need to run:
``` vimrc
:PlugInstall
```
and it will install all missing plugins in _~/.config/nvim/plugged/_. You can change this default folder with this line:
``` vimrc
call plug#begin('~/.config/nvim/plugged')
```

## Installed plugin
-------------------

Currently I have this features:

* the nerdtree : an explorer file in the consol
* vim-airline : make my vim more beautiful
* supetab : tab completion
* deoplete : vim code completion
* delimitmate : manage the delimitor (like brackets...)
* ultisnpis : vim snippest
* vim-multiple-cursors : multiple editing like *Sublime Text*
* taglist : manage my ctags
* python-mode : full ide for python
* tcomment : easy comment
* rainbow_parentheses : multiple color for brackets
* vim-indent-guides : display indentation level
* vim-adventurous : vim theme
* molokai : other vim theme
* vim-go : go ide
* tagbar : show your function like in a ide




## Shortcuts
------------

The shortcuts mapped are:

* `` map <F2> :bn <CR> `` : change to next buffer
* `` map <F3> :w <CR> `` : save the current file
* `` map <F4> :NERDTreeToggle <CR> `` : toogle the file explorer
* `` map <F5> gcc<ESC> ``: It will toogle comment selected line. 
* `` map <F6> :set hlsearch <CR>`` : set the highlight search
* `` map <F18> :set hlsearch <CR>`` : disable it
* `` map <F7> :bd <CR>`` : close the current buffer
* `` map <F19> :q <CR>`` : close the editor
* `` map <F8> :terminal `` : launch terminal
* `` map <F9> :TagbarToogle<CR>`` : open/close tag list's current file
* `` map <F10> <C-0>za `` : toggle folde python
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

