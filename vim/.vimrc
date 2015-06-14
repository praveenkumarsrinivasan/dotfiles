" Setup {{{1 
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
" Initialize Vundle
set rtp+=~/.vim/autoload/Vundle.vim/
call vundle#rc()
" Plugins {{{1
call vundle#begin()
" Plugins types {{{2
" Core Plugins : Essential plugins for regular use {{{3
Plugin 'davidhalter/jedi-vim'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-multiple-cursors'
" Level-1 Plugins : Important plugins {{{3
Plugin 'ervandew/supertab'
Plugin 'powerline/powerline'
Plugin 'aperezdc/vim-template'
Plugin 'Shougo/vimshell'
Plugin 'Shougo/neocomplete.vim'
Plugin 'drmingdrmer/xptemplate'
Plugin 'pangloss/vim-javascript'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-scripts/EasyMotion'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'timestamp.vim'
Plugin 'vim-scripts/vim-addon-json-encoding'
Plugin 'junegunn/vim-easy-align'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/listtrans.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/betterdigraphs.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/vmath.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/dragvisuals.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/hlnext.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/colalignsimple.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/visualguide.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/persistentvisuals.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/foldsearches.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/undowarnings.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/normalized_search.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/eqalignsimple.vim'

" Level 2 Plugins : Useful but might use rarely {{{3
Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/vimproc'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-unimpaired'
Plugin 'svermeulen/vim-easyclip'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/TwitVim'
Plugin 'vim-scripts/autotags'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/autoswap_mac_linux.vim'
Plugin 'https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/miv.vim'

" Level 3 Plugins : Smaller and personal user generated plugins {{{3
Plugin 'MarcWeber/vim-addon-completion'
Plugin 'derekwyatt/vim-fswitch'
" Plugin 'derekwyatt/vim-metafuz'
" 2}}}
call vundle#end()


" Options {{{1
" Enable VIM environment
set nocompatible

" Enable syntax highlighting
filetype plugin indent on
syntax enable

" Color Scheme to load
colorscheme wombat

" Enable syntax highlighting
filetype on
filetype plugin indent on
syntax on

" Real programmers don't use TABs but spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smartindent

" reload file when changes happen in other editors
set autoread

" make backspace behave like normal again
set backspace=2

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile
" set backup
" set backupskip=/tmp/*,/private/tmp/*",*.gpg
" set backupdir=~/.vim/tmp,/tmp
" set browsedir=buffer

" Improving code completion
set completeopt=longest,menuone

" make yank copy to the global system clipboard
set clipboard=unnamed

set directory=~/.vim/tmp,/tmp
set encoding=utf-8
set dictionary=~/.vim/spell/eng.utf-8.add


set fileencodings=utf-8
set fileformats=unix,dos,mac
set foldmethod=marker
set foldenable
" set formatprg=par
" set hidden

" History Buffer Setting
set history=1000
set undolevels=1000

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>
noremap <Leader>h :nohl<CR>

" Show tab and end on line characters
set list
set listchars=tab:▸\ ,eol:¬

" Enable mouse selection
set mouse=a
set noequalalways
set nojoinspaces

" show line numbers
set number

set omnifunc=syntaxcomplete#Complete
set shiftround
set showcmd
set shortmess=filnxtToOI
set splitbelow
set splitright
set spelllang=eng
set tags=tags;$HOME
set timeoutlen=600
set ttyfast
set visualbell t_vb=".
set wildmode=list:longest,list:full
set wrapmargin=0
set wrap

" Necessary order
set linebreak
set textwidth=0
" Dsplay as much as possible of the last line
set display+=lastline
" Highlight characters after column 120
match Error /\%121v.\+/




" Leaders {{{1
let mapleader = ","
nnoremap <leader>\ :Tagbar<cr>
nnoremap <leader>. :cd %:h<cr>
nnoremap <leader>c :nnoremap <leader>c 
nnoremap <leader>d "_d
nnoremap <leader>e :Errors<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>s :set spell!<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :sign unplace *<cr>
nnoremap <leader>z :wq!<cr>
vnoremap <leader>d "_d
vnoremap <leader>q <esc>:q!<cr>

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

map <Leader>a ggVG  " select all


" Misc {{{1
inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>
inoremap <bar>( <esc>d(s

" Type lang<C-Y> for shebang line
inoremap <C-y> <Esc>:sil exe ".!which <cWORD>" <bar> s/^/#!/ <bar> filetype detect<cr>YpDi
" Type 1. something<C-j> for 2.
inoremap <C-j> <esc>:exe "norm Ypf lDB\<C-a>"<cr>A

" Use :norm! so a count can be accepted
nnoremap <C-j> :norm! o<esc>k<cr>
nnoremap <C-k> :norm! O<esc>

nnoremap <C-n> :lne<cr>z.
nnoremap <C-p> :lp<cr>z.
nnoremap Q :exe "try <bar> tabc! <bar> catch /E784/ <bar> qa! <bar> endtry"<cr>

" Steve Losh
noremap H ^
noremap L g_
noremap! <C-a> <Home>
noremap! <C-e> <End>

vnoremap K k
vnoremap & :s<cr>

command! W w !sudo tee % &>/dev/null
command! Mks let g:session = getcwd() <bar> call Mks(g:session)

" Pull last visually selected area onto command-line mode
cnoremap <C-R><C-V> <C-R>=fnameescape(getline("'<")[ getpos("'<")[2]-1 : getpos("'>")[2]-1 ])<CR>

" Drew Neil
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" Plugins-Setting {{{1
" Powerline/Airline {{{2
let g:airline#extensions#tabline#enabled = 1
" vim-markdown {{{2
" let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_math=1


" FuzzyFinder {{{2
nnoremap '<Space> :FufBookmarkDir<cr>
nnoremap '.  :FufFileWithCurrentBufferDir<cr>
nnoremap ''  :b#<cr>
nnoremap '/  :FufFile /<cr>
nnoremap 'a  :FufFile app/<cr>
nnoremap 'd  :FufFile $HOME/Dropbox/<cr>
nnoremap 'f  :FufFile<cr>
nnoremap 'h  :FufFile $HOME/<cr>
nnoremap 'j  :FufFile $HOME/.vim/<cr>
nnoremap 'k  :FufBuffer<cr>
nnoremap 'l  :FufTag<cr>
nnoremap 'n  :FufFile $NOTES_DIR/<cr>
nnoremap 'p  :e! ${PASSWORD_FILE}.gpg<cr>
nnoremap 'r  :e! $HOME/.bashrc<cr><cr>
nnoremap 's  :FufFile spec/<cr>
nnoremap 't  :cd %:p:h<cr>:sh<cr>:cd -<cr>
nnoremap 'v  :e! $MYVIMRC<cr><cr>
nnoremap 'w  :FufFile $HOME/Dropbox/Tech/web/<cr>
nnoremap 'y  :FufFile $HOME/Dropbox/Archive/Bible/<cr>
let g:fuf_file_exclude = '\v\~$|\.(DS_Store|o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_buffer_keyDelete = '<C-d>'
" vim-surround {{{2
let g:surround_42 = "**\r**"
nnoremap ** :exe "norm v$hS*"<cr>
nnoremap __ :exe "norm v$hS_"<cr>
vmap * S*
vmap _ S_
vmap <leader>l <Plug>VSurround]%a(<C-r><C-p>+)<Esc>
" syntastic {{{2
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_highlighting = 0
" YouCompleteMe {{{2
let g:ycm_global_ycm_extra_conf = '$HOME/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" Tagbar {{{2
let g:tagbar_width = 80
let g:tagbar_sort = 0
" Functions {{{1
" Toogle LineNumber Style {{{2
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
        highlight LineNr ctermfg=yellow
    else
        set relativenumber
        highlight LineNr ctermfg=green
    endif
endfunc

nnoremap <C-\> :call NumberToggle()<cr>


" Tabularize {{{2
vnoremap <leader>t j:call <SID>table()<cr>
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
fun! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfun
fun! s:table() range
    exe "'<,'>Tab /|"
    let hsepline= substitute(getline("."),'[^|]','-','g')
    exe "norm! o" .  hsepline
    exe "'<,'>s/-|/ |/g"
    exe "'<,'>s/|-/| /g"
    exe "'<,'>s/^| \\|\\s*|$\\||//g"
endfun
" NewPost {{{2
nnoremap 'bb :FufFile $BLOG/_posts/<cr>
nnoremap 'bn :NewPost 
nnoremap 'bp :!cd $BLOG && rake gen_deploy && cd -<cr>
command! -nargs=1 NewPost call NewPost("<args>")
fun! NewPost(args)
    let l:file = "$BLOG/_posts/" . strftime("%Y-%m-%d") . "-" . tolower(substitute(a:args, " ", "-", "g")) . ".markdown"
    exe "e!" . l:file
    put ='---'
    put ='date: '''.strftime("%Y-%m-%d H:M:S").''''
    put ='layout: post'
    put ='slug: '.l:file
    put ='title: '.a:args
    put ='categories:'
    put ='- blog'
    put ='---'
endfun
" PrettyJSON {{{2
command! -range=% JSON <line1>,<line2>call PrettyJSON()
fun! PrettyJSON() range
    exe a:firstline . "," . a:lastline . "!python2 -mjson.tool"
endfun
" Greek {{{1
map! <C-v>GA Γ
map! <C-v>DE Δ
map! <C-v>TH Θ
map! <C-v>LA Λ
map! <C-v>XI Ξ
map! <C-v>PI Π
map! <C-v>SI Σ
map! <C-v>PH Φ
map! <C-v>PS Ψ
map! <C-v>OM Ω
map! <C-v>al α
map! <C-v>be β
map! <C-v>ga γ
map! <C-v>de δ
map! <C-v>ep ε
map! <C-v>ze ζ
map! <C-v>et η
map! <C-v>th θ
map! <C-v>io ι
map! <C-v>ka κ
map! <C-v>la λ
map! <C-v>mu μ
map! <C-v>xi ξ
map! <C-v>pi π
map! <C-v>rh ρ
map! <C-v>si σ
map! <C-v>ta τ
map! <C-v>ps ψ
map! <C-v>om ω
map! <C-v>ph ϕ
" Math {{{1
map! <C-v>ll →
map! <C-v>hh ⇌
map! <C-v>kk ↑
map! <C-v>jj ↓
map! <C-v>= ∝
map! <C-v>~ ≈
map! <C-v>!= ≠
map! <C-v>!> ⇸
map! <C-v>~> ↝
map! <C-v>>= ≥
map! <C-v><= ≤
map! <C-v>0  °
map! <C-v>ce ¢
map! <C-v>*  •
map! <C-v>co ⌘
" Subscript and Superscript {{{1
inoremap <leader>1 ~1~
inoremap <leader>2 ~2~
inoremap <leader>3 ~3~
inoremap <leader>4 ~4~
inoremap <leader>5 ~5~
inoremap <leader>6 ~6~
inoremap <leader>7 ~7~
inoremap <leader>8 ~8~
inoremap <leader>9 ~9~
inoremap <leader>== ^+^
inoremap <leader>=2 ^2+^
inoremap <leader>=3 ^3+^
inoremap <leader>-- ^-^
inoremap <leader>-2 ^2-^
inoremap <leader>-3 ^3-^
" Extended Text Objects {{{1
let s:items = [ "<bar>", "\\", "/", ":", ".", "*", "_" ]
for item in s:items
    exe "nnoremap yi".item." T".item."yt".item
    exe "nnoremap ya".item." F".item."yf".item
    exe "nnoremap ci".item." T".item."ct".item
    exe "nnoremap ca".item." F".item."cf".item
    exe "nnoremap di".item." T".item."dt".item
    exe "nnoremap da".item." F".item."df".item
    exe "nnoremap vi".item." T".item."vt".item
    exe "nnoremap va".item." F".item."vf".item
endfor

" Select within fold
nnoremap viz v[zo]z$

" }}} vim: fdm=marker
