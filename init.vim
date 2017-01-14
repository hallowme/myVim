syntax on

filetype on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" Plugin Manager : Vim-plug """"""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if empty(glob("~/.config/nvim/autoload/plug.vim"))
	:! curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif



"" utilisation d'un autre gestionnaire de plugin""
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim' 
Plug 'tomtom/tcomment_vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'neomake/neomake'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'fatih/vim-go'
Plug 'tomasr/molokai'
Plug 'majutsushi/tagbar'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'zchee/deoplete-go'
Plug 'crater2150/vim-theme-chroma'
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" General settings """"""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number
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
colorscheme chroma


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
map <F18> :set hlsearch! <CR>

""fermer onglet ou l'éditeur
map <F7> :bd<CR>
map <F19> :q<CR>

" <F8> is unused

"" on ouvre une liste des tags
nmap <F9> :TagbarToggle<CR>

" <F10> is unused

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

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

"" si gofile
au BufRead,BufNewFile *.go map <leader>b :GoBuild<CR>
au BufRead,BufNewFile *.go map <leader>r :GoRun<CR>
au BufRead,BufNewFile *.go map <leader>f :GoFmt<CR>
au BufRead,BufNewFile *.go map <leader>i :GoImport 
au BufRead *.go colorscheme molokai


"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" Plugin Conf """"""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""
" snippets ""
""""""""""""

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

""""""""""
" vim-go "
""""""""""
" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  


""""""""""""""
" vim-indent "
""""""""""""""
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


"""""""""""""""""""
" Config deoplete "
"""""""""""""""""""
" Use syntax checker
autocmd! BufEnter,BufWritePost * Neomake

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1



"""""""""""""""""""""""
" Config vim-aireline "
"""""""""""""""""""""""
"" vim airline, much beautiful 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


"""""""""""""""""""
" Config supertab "
"""""""""""""""""""

"" Tabulation configuration
let g:SuperTabDefaultCompletionType = "<c-n>"

" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


""""""""""""""""""""""""""""""
" Config rainbow-parentheses "
""""""""""""""""""""""""""""""
" options rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
"  end of rainbow_parentheses
let g:rainbow_active = 1

" for clojure "
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" end clojure

