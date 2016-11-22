# My Vim 


## Plugin manager


There is my **vimrc**. I use vim-plug as plugin manager. If it doesn't exist in your _.vim/plugged/autoload/_, it will be download with:
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
* auto-pairs : match the matching parenthesis
* neocomplete : complete most of the langage
* tcomment : easy comment
* vim-indent-guides : display indentation level
* molokai : other vim theme
* tagbar : show your function like in a ide




## Shortcuts
------------

The shortcuts mapped are:

* `` map <F2> :bn <CR> `` : change to next buffer
* `` map <F3> :w <CR> `` : save the current file
* `` map <F4> :NERDTreeToggle <CR> `` : toogle the file explorer
* `` map <F5> gcc<ESC> ``: It will toogle comment selected line. 
* `` map <F6> :set hlsearch <CR>`` : set the highlight search
* `` map <S-F6> :set hlsearch <CR>`` : disable it
* `` map <F7> :bd <CR>`` : close the current buffer
* `` map <S-F7> :q <CR>`` : close the editor
* `` map <F8> :terminal `` : launch terminal
* `` map <F9> :TagbarToogle<CR>`` : open/close tag list's current file
* `` map <F10> za `` : toggle folding
* `` inoremap <F12> <C-x><C-o>`` : using ctags to complete methode.

## Settings
-----------


``` vimrc
set history=256
```
Keep 256 undo.

To navigate faster.

```vimrc
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
noremap <C-j> ddp
noremap <C-k> ddkP
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
```
