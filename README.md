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

* pony-vim-syntax: pony language syntaxe
* the nerdtree : an explorer file in the consol
* syntastic : syntaxe checker 
* vim-airline : make my vim more beautiful
* supetab : tab completion
* vim-fugitive : git plugin for vim
* investigate : open *Zeal* an offline documentation
* delimitmate : manage the delimitor (like brackets...)
* vim-multiple-cursors : multiple editing like *Sublime Text*
* taglist : manage my ctags
* vim-ruby : ruby mode for vim
* vim-crystal : syntaxe higlighting for crystal language
* tabular : necessary for _vim-markdown_
* vim-markdown : usefull to edit in markdown form
* vim-siwft : syntaxe for swift language
* python-monde : full ide for python


## Shortcuts
------------

The shortcuts mapped are:

* `` map <F2> :bn <CR> `` : change to next buffer
* `` map <F3> :w <CR> `` : save the current file
* `` map <F4> :NERDTreeToggle <CR> `` : toogle the file explorer
* `` au BufEnter *.c* map <F5> :s /^/\/\//g <CR>`` : comments in ``C/C++``. It works with some other language
* `` au BufEnter *.c* map <S-F5> :s /\/\/// <CR>`` : uncomments in ``C/C++``. It works with other language too.
* `` map <F6> :set hlsearch <CR>`` : set the highlight search
* `` map <S-F6> :set hlsearch <CR>`` : disable it
* `` map <F7> :bd <CR>`` : close the current buffer
* `` map <S-F7> :q <CR>`` : close the editor
* `` map <F8> :SyntasticToggleMode <CR> `` : open/close the window with syntastic's warning
* `` map <S-F8> :make run<CR>`` : launc make run command
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

