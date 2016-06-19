syntax on

filetype on
filetype plugin indent on

"" test if plug.vim exist
if empty(glob("~/.vim/autoload/plug.vim"))
	:! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

"" utilisation d'un autre gestionnaire de plugin""
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'shougo/neocomplete.vim'
Plug 'raimondi/delimitmate'
Plug 'sirver/ultisnips'
Plug 'terryma/vim-multiple-cursors'
Plug 'taglist.vim'
Plug 'klen/python-mode'
Plug 'tomtom/tcomment_vim'
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
 

""______________________________________________________________""


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
"" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"" on compile grâce à make, et on run
" map <F8> :SyntasticToggleMode<CR>
map <F8> :make <CR>

"" on ouvre une liste des tags
map <F9> :Tlist <CR> <C-W><C-H>

"" toogle folding python
map <F10> za <CR> k

"" Completion python :
inoremap <F12> 	 <C-x><C-o>

"" pour qu'on détecte prolog et pas perl
let g:filetype_pl="prolog"

"" aller plus vite avec ctrl+{e,y}
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" neocomplete enable
let g:neocomplete#enable_at_startup = 1

"" vim airline, much beautiful 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"" maping and tab completion + config
set complete=.,b,u,]
set wildmode=longest,list:longest

"" Tabulation configuration
let g:SuperTabDefaultCompletionType = "<c-n>"

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

"" code folding
let g:SimpylFold_fold_docstring = 0

"" python mode
let g:pymode_options = 0
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_breakpoint_cmd = ''
let g:pymode_lint_unmodified = 1
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pylint', 'pep8', 'mccabe']
let g:pymode_lint_cwindow = 1
let g:pymode_rope = 0
let g:pymode_syntax_all = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_python = 'python3'
let g:pymode_folding = 1
let g:pymode_lint_ignore = "C1001,E501,C030,C03011,R0201,C0325"

"" coloration 
hi Normal           ctermfg=255
hi CursorLine                   ctermbg=232 cterm=none
hi Boolean          ctermfg=200
hi Character        ctermfg=178
hi Number           ctermfg=200
hi String           ctermfg=178
hi Conditional      ctermfg=220             cterm=bold
hi Constant         ctermfg=200             cterm=bold
hi Cursor           ctermfg=16  ctermbg=253
hi Debug            ctermfg=225             cterm=bold
hi Define           guifg=gold gui=bold ctermfg=blue

hi Delimiter        ctermfg=241

hi DiffAdd                      ctermbg=23
hi DiffChange       ctermfg=181 ctermbg=237
hi DiffDelete       ctermfg=162 ctermbg=53
hi DiffText                     ctermbg=52  cterm=bold

hi Directory        ctermfg=112             cterm=bold
hi Error            ctermfg=189 ctermbg=89
hi ErrorMsg         ctermfg=219             cterm=bold
hi Exception        ctermfg=220             cterm=bold
hi Float            ctermfg=200
hi FoldColumn       ctermfg=67  ctermbg=16
hi Folded           ctermfg=67  ctermbg=16
hi Function         guifg=gold gui=bold ctermfg=blue


hi Identifier       ctermfg=112             cterm=none
hi Ignore           ctermfg=244 ctermbg=232
hi IncSearch        ctermfg=75

hi Keyword          ctermfg=220             cterm=bold
hi Label            ctermfg=220             cterm=none
hi Macro            ctermfg=75

hi MatchParen       ctermfg=208 ctermbg=16  cterm=bold
hi ModeMsg          ctermfg=220
hi MoreMsg          ctermfg=220
hi Operator         ctermfg=112

" complete menu
hi Pmenu            ctermfg=250 ctermbg=238
hi PmenuSel         ctermfg=250 ctermbg=25
hi PmenuSbar                    ctermbg=232
hi PmenuThumb       ctermfg=250

hi PreCondit        ctermfg=220             cterm=bold
hi PreProc          ctermfg=75
hi Question         ctermfg=75
hi Repeat           ctermfg=220             cterm=bold
hi Search           ctermfg=253 ctermbg=66

" marks column
hi SignColumn       ctermfg=112 ctermbg=235
hi SpecialChar      ctermfg=200
hi SpecialComment   ctermfg=244             cterm=bold
hi Special          ctermfg=75  ctermbg=232

hi Statement        ctermfg=220             cterm=bold
hi StatusLine       ctermfg=238 ctermbg=253
hi StatusLineNC     ctermfg=244 ctermbg=232
hi StorageClass     ctermfg=112
hi Structure        ctermfg=75
hi Tag              ctermfg=220
hi Title            ctermfg=166
hi Todo             ctermfg=231 ctermbg=232 cterm=bold

hi Typedef          ctermfg=112
hi Type             ctermfg=112             cterm=none
hi Underlined       ctermfg=244             cterm=underline

hi VertSplit        ctermfg=244 ctermbg=232 cterm=bold
hi VisualNOS                    ctermbg=238
hi Visual                       ctermbg=25
hi WarningMsg       ctermfg=231 ctermbg=238 cterm=bold
hi WildMenu         ctermfg=75

hi Comment          ctermfg=244
hi CursorColumn                 ctermbg=232
hi ColorColumn                  ctermbg=232
hi LineNr           ctermfg=250 ctermbg=232
hi NonText          ctermfg=244
hi SpecialKey       ctermfg=244

