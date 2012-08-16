set expandtab
set list
set listchars=tab:>-,trail:-
set softtabstop=4
set number

set encoding=utf-8
set fileencoding=utf-8

set autoindent
set smartindent

set shiftwidth=4

syntax enable
syntax on

filetype on 
filetype plugin on
filetype plugin indent on

set backspace=2
set hlsearch
set pastetoggle=<F3>

let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Sort_Type="name"
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Auto_Open=1
set updatetime=1000
map <F2> :Tlist<CR>

let g:winManagerWindowLayout='FileExplorer|TagList'
map <F4> :WMToggle<CR>

let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'

if has("autocmd")
    autocmd FileType python set complete+=k~/.vim/tools/pydiction iskeyword+=.,(
endif

"set color scheme
set t_Co=256
colorscheme lucius 

" don't keep backup file
set nobackup

" replace tab with whitespace
set et sta sw=4 sts=4
set smarttab

" Using Conque
let g:ConqueTerm_EscKey='<Esc>'
let g:ConqueTerm_ToggleKey='<F8>'
let g:ConqueTerm_Color=1
let g:ConqueTerm_PromptRegex = '^\w\+@[0-9A-Za-z_.-]\+:[0-9A-Za-z_./\~,:-]\+\$'


" neocomplcache
" disable AutoComplPop
let g:acp_enableAtStartup = 0
" Use neocomplcache
let g:neocomplcache_enable_at_startup = 1
" Use smartcase
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags



au FileType html,xml,xsl,mako source ~/.vim/scripts/closetag.vim
