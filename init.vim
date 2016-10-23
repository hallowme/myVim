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


function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

"" utilisation d'un autre gestionnaire de plugin""
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
Plug  'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim' , { 'do': function('DoRemote') }
Plug 'sirver/ultisnips'
Plug 'taglist.vim'
Plug 'tomtom/tcomment_vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'neomake/neomake'
Plug 'klen/python-mode'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'philpl/vim-adventurous'
Plug 'fatih/vim-go'
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
let g:filetype_pl="prolog" "detect prolog file and not perl
let mapleader = "\<Space>"
colorscheme adventurous
 

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

"" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"" on compile grâce à make, et on run
" map <F8> :SyntasticToggleMode<CR>
map <F8> :terminal <CR>

"" on ouvre une liste des tags
map <F9> :Tlist <CR> <C-W><C-H>

"" ouvrir/fermer fenêtre erreur
map <F10> <C-0>za

"" Completion python :
inoremap <F12> 	 <C-x><C-o>

"" bouge ligne en dessous/dessus
noremap <C-j> ddp
noremap <C-k> ddkP

"" aller plus vite avec ctrl+{e,y}
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"" si gofile
au BufRead,BufNewFile *.go map <leader>b :GoBuild<CR>
au BufRead,BufNewFile *.go map <leader>r :GoRun<CR>
au BufRead,BufNewFile *.go map <leader>f :GoFmt<CR>
au BufRead,BufNewFile *.go map <leader>i :GoImport 


"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" Plugin Conf """"""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""
" ultisnips "
"""""""""""""

let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

""""""""""""""
" vim-indent "
""""""""""""""
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


""""""""""""""""""""""
" Config python-mode "
""""""""""""""""""""""
let g:pymode_lint_ignore = "E501"
let g:pymode_lint_todo_symbol = '⚠'
let g:pymode_lint_error_symbol = '☢'
let g:pymode_rope_complete_on_dot = 0

"""""""""""""""""""
" Config deoplete "
"""""""""""""""""""
" Use syntax checker
autocmd! BufEnter,BufWritePost * Neomake

" Use deoplete.
let g:deoplete#enable_at_startup = 1



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
"" maping and tab completion + config
set complete=.,b,u,]
set wildmode=longest,list:longest

"" Tabulation configuration
let g:SuperTabDefaultCompletionType = "<c-n>"


""""""""""""""""
" Config ctags "
""""""""""""""""
"" ctags
set tags+=~/.my_tags/
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview


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

