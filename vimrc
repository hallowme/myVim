syntax on

filetype on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" Plugin Manager : Vim-plug """"""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if empty(glob("~/.vim/autoload/plug.vim"))
	:! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

"" utilisation d'un autre gestionnaire de plugin""
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'shougo/neocomplete.vim'
Plug 'tomtom/tcomment_vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'fatih/molokai'
Plug 'majutsushi/tagbar'
call plug#end()

""______________________________________________________________""
 

"" general settings
set number
set nocompatible
set smartindent
set showmode
set ruler
set showcmd
set mouse=a
set cursorline
set ignorecase
set smartcase
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set laststatus=2
set autochdir " changer automatiquement de dossier a l'ouverture
set showbreak=↪ " See this char when wrapping text
set t_Co=256
set background=dark
set ttyfast " faster refraw
set incsearch " search as typing"
set history=256 "keep 256 undo"
set hlsearch 
set tabstop=2 
set shiftwidth=2
set linebreak
set background=dark
set clipboard=unnamedplus 	"copy/paste direct in clipboard"
let g:filetype_pl="prolog" "detect prolog file and not perl
let mapleader = "\<Space>"
colorscheme molokai



""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" Keybidings """"""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""

inoremap jk <Esc>

"" next or preview buffer
map <F2> :bn <CR>
map <F3> :w <CR>

"" nerd tree vim
map <F4> :NERDTreeToggle<CR>

" for comment the line
map <F5> gcc<ESC>

"" enclanche ou non le hlsearch
map <F6> :set hlsearch <CR>
map <s-F6> :set hlsearch! <CR>

""fermer onglet ou l'éditeur
map <F7> :bd<CR>
map <S-F7> :q<CR>


"" on compile grâce à make, et on run
" map <F8> :SyntasticToggleMode<CR>
map <F8> :make <CR>

"" on ouvre une liste des tags
map <F9> :TagbarToogle<CR>

"" toogle folding python
map <F10> za <CR>

"" Completion python :
inoremap <F12> 	 <C-x><C-o>

"" bouge ligne en dessous/dessus
noremap <C-j> ddp
noremap <C-k> ddkP
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" aller plus vite avec ctrl+{e,y}
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" Plugin Conf """"""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""

" neocomplete enable
let g:neocomplete#enable_at_startup = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" Plugin Manager : Vim-plug """"""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" vim airline, much beautiful 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"" maping and tab completion + config
set complete=.,b,u,]
set wildmode=longest,list:longest

"" Tabulation configuration
let g:SuperTabDefaultCompletionType = "<c-n>"

