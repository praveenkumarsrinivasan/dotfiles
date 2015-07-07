" .vimrc
" Author: Praveen Kumar Srinivasan
" Email: praveen.sxi@gmail.com
"

" Setup {{{1

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Initialize Vundle
set rtp+=~/.vim/autoload/Vundle.vim/
call vundle#rc()

" -----------------------------------------------------------------------------

" Plugins {{{1

call vundle#begin()

" Plugins types {{{2
" Core Plugins : Essential plugins for regular use {{{3
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/fuzzyfinder'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-multiple-cursors'
Plugin 'rstacruz/sparkup'
Plugin 'aperezdc/vim-template'
Plugin 'drmingdrmer/xptemplate'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/vim-easy-align'
Plugin 'sjl/gundo.vim'
Plugin 'powerline/powerline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'atweiden/vim-dragvisuals'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'timestamp.vim'
" 3}}}
" Level-1 Plugins : Important plugins {{{3
Plugin 'shinokada/listtrans.vim'
Plugin 'nixon/vim-vmath'
Plugin 'BriceSD/hlnext'
Plugin 'andyhunne/vim-visualguide'
Plugin 'andyhunne/vim-foldsearches'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/vimshell'
Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/neocomplcache.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'atweiden/vim-betterdigraphs'
"Plugin 'atweiden/vim-hudigraphs'

Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-scripts/vim-addon-json-encoding'
Plugin 'jcf/vim-latex'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
"Plugin 'lervag/vimtex'
"Plugin 'garbas/vim-snipmate'
"Plugin 'vim-scripts/EasyMotion'
" 3}}}
" Level 2 Plugins : Useful but might use rarely {{{3
Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/vimproc'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/TwitVim'
Plugin 'vim-scripts/autotags'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'gioele/vim-autoswap'
"Plugin 'tpope/vim-sensible'
" Plugin 'svermeulen/vim-easyclip'
" 3}}}
" Level 3 Plugins : Smaller and personal user generated plugins {{{3
Plugin 'MarcWeber/vim-addon-completion'
Plugin 'derekwyatt/vim-fswitch'
" Plugin 'derekwyatt/vim-metafuz'
" 3}}}
" 2}}}

call vundle#end()

" -----------------------------------------------------------------------------

" Options {{{1

" Enable VIM environment
set nocompatible

" Color Scheme to load
set t_Co=256
set background=dark
colorscheme badwolf

set guifont=Monaco:h13

" Enable syntax highlighting
filetype plugin indent on
syntax enable

" Don’t add empty newlines at the end of files
set binary
set noeol

" Real programmers don't use TABs but spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" Enable indent support
" Turn on autoindenting of blocks
set smartindent
" Retain indentation on next line
set autoindent
" copy the previous indentation on autoindenting
set copyindent
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" wrap at word
set lbr

" Paste Mode
set pastetoggle=<F2>
" <C-r>+ - os paste

" reload file when changes happen in other editors
set autoread
set autowrite

" Switch between buffers without saving
set hidden

" make backspace behave like normal again
set backspace=indent,eol,start

" Backup options

" Disable backup and swap files - they trigger too many events for file system watchers
" set nobackup
" set nowritebackup
" set noswapfile

set backup                              " enable backups
set noswapfile                          " it's 2013, Vim.
set undodir=~/.vim/tmp/undo//           " undo files
set backupdir=~/.vim/tmp/backup//       " backups
set directory=~/.vim/tmp/swap//         " swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
if !isdirectory("~/.vim/tmp/yankring//")
    call mkdir("~/.vim/tmp/yankring//", "p")
endif

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

" set browsedir=buffer

" Highlight current line
"set cursorline "redraw is slow

" Improving code completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" make yank copy to the global system clipboard
set clipboard=unnamed

" Dictionary
set dictionary=~/.vim/spell/en.utf-8.add.spl
" set spelllang=eng

" Encoding
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac

set foldmethod=syntax
" fold minimum lines
set fml=1
" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" set formatprg=par

" History Buffer Setting
set history=1000
set undolevels=1000
set undofile

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Show tab and end on line characters
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set showbreak=↪

" Always show status line
set laststatus=2

" Enable mouse selection
set mouse=a

" show line numbers
set number

" all windows not same size after split or close
set noequalalways

set splitbelow
set splitright
set timeoutlen=600
set omnifunc=syntaxcomplete#Complete
set nojoinspaces
set showcmd
set shortmess=filnxtToOI
set tags=tags;$HOME
set ttyfast
set visualbell t_vb=".
set wrapmargin=0
set wrap

" Necessary order
set linebreak
set textwidth=0

" Display as much as possible of the last line
set display+=lastline

" Highlight characters after column 120
" match Error /\%120v.\+/

"Square up visual selections...
set virtualedit=block


" Wildmenu completion {{{
" Enhance command-line completion
set wildmenu
" Show list of completions, and complete as much as possible, then iterate full completions
set wildmode=list:longest,list:full

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files
" }}}


" -----------------------------------------------------------------------------

" AutoCommands {{{1

if has('autocmd')

    " Resize splits when the window is resized
    au VimResized * :wincmd =

    " Save when losing focus
    au FocusLost * :silent! wall

    "Set fold method for bib files
    au FileType bib setlocal foldmethod=indent

    " Enable omni completion.
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    " Set foldmethod for vim {{{
    au FileType vim setlocal foldmethod=marker
    au bufwritepost * call VimToggleFoldOnWrite()

    function! VimToggleFoldOnWrite()
        if &ft=='vim'
            setlocal foldmethod=marker
            call ToggleFold()
            call ToggleFold()

            " goto the last working line
            execute 'normal! "zv'
        endif
    endfunction
    " }}}
    " Compile Tex Files on Save {{{
    augroup tex_autocompile
        au!

        au bufwritepre *.tex silent :!pdflatex -synctex=1 --interaction=nonstopmode %
        au bufwritepost *.tex silent call Tex_ForwardSearchLaTeX()
    augroup END
    " }}}
    " Return to the same line when reopening a file {{{
    augroup line_return
        au!
        au BufReadPost *
                    \ if line("'\"") > 0 && line("'\"") <= line("$") |
                    \     execute 'normal! g`"zvzz' |
                    \ endif
    augroup END
    " }}}
    " Show help files in a new tab, plus add a shortcut for help {{{
    let g:help_in_tabs = 1

    nmap <silent> H  :let g:help_in_tabs = !g:help_in_tabs<CR>

    "Only apply to .txt files...
    augroup HelpInTabs
        autocmd!
        autocmd BufEnter  *.txt   call HelpInNewTab()
    augroup END

    "Only apply to help files...
    function! HelpInNewTab ()
        if &buftype == 'help' && g:help_in_tabs
            "Convert the help window to a tab...
            execute "normal \<C-W>T"
        endif
    endfunction
    " }}}
    " Edit and auto-update this config file and plugins {{{
    augroup VimReload
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
    augroup END
    " }}}

endif

" -----------------------------------------------------------------------------

" Functions {{{1

" Toggle LineNumber Style {{{2
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
nnoremap <leader>\ :call NumberToggle()<cr>
" 2}}}
" Toggle FoldMarker {{{2
let g:FoldMethod=0

function! ToggleFold()
    if g:FoldMethod == 0
        exe 'set foldmethod=syntax'
        let g:FoldMethod = 1
    else
        exe 'set foldmethod=marker'
        let g:FoldMethod = 0
    endif
endfunc

map <leader>F :call ToggleFold()<cr>
" 2}}}
" Abbrevations {{{
function! EatChar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

function! MakeSpacelessIabbrev(from, to)
    execute "iabbrev <silent> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction

function! MakeSpacelessBufferIabbrev(from, to)
    execute "iabbrev <silent> <buffer> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction
" }}}
" MS to UTC {{{
function! ToggleUTF8 ()
    if &fileencoding =~ 'utf-\?8'
        set fileencoding=latin1
        !osascript -e 'tell application "Terminal" to set current settings of front window to settings set "stdterminal"'
    else
        set fileencoding=utf8
        !osascript -e 'tell application "Terminal" to set current settings of front window to settings set "stdterminal_unicode"'
    endif
endfunction

let g:UnicodeTerminal = 0
function! ToggleTerminal ()
    if !g:UnicodeTerminal
        !osascript -e 'tell application "Terminal" to set current settings of front window to settings set "stdterminal"'
        let g:UnicodeTerminal = 1
        echo '[Unicode terminal]'
    else
        !osascript -e 'tell application "Terminal" to set current settings of front window to settings set "stdterminal_unicode"'
        let g:UnicodeTerminal = 0
        echo '[Latin1 terminal]'
    endif
endfunction

nnoremap <leader>U  [Toggle UTF8]  :call ToggleUTF8()<CR><CR>:echo '[' . &fileencoding . ']'<CR>
nnoremap <leader>UU [Toggle Unicode terminal]  :call ToggleTerminal()<CR><CR>
" }}}

" -----------------------------------------------------------------------------

" Leaders {{{1

let mapleader = ","
let maplocalleader = "\\"

" Retab the file
nnoremap <leader>rt :retab<CR>:w!<CR>

" Black Hole Deletion
nnoremap <leader>d "_d
nnoremap <leader>D "_D
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

" File Editing Options
nnoremap <leader>z :wq!<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>w :w!<cr>

" clear search
nnoremap <leader>S :nohlsearch<CR>

" spell check
nnoremap <leader>s :set spell!<cr>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" open new window
nmap <leader>swh :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk :topleft  new<CR>
nmap <leader>swj :botright new<CR>

" open new buffer
nmap <leader>sh :leftabove  vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
nmap <leader>sj :rightbelow new<CR>

" Wrap
nnoremap <leader>W :set wrap!<cr>

" Clean trailing whitespace
nnoremap <leader>ww :%s/\s\+$//<cr>:let @/=''<CR>

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" select all
map <Leader>a ggVG

" Quickly edit/reload the vimrc file
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

" Open new file in new vertical split window
noremap <leader>v :rightbelow vnew<cr>

" To open a new empty buffer
nmap <leader>T :enew<cr>

" Move between Buffers
nmap <leader>l :bnext<CR>            " Move to the next buffer
nmap <leader>h :bprevious<CR>        " Move to the previous buffer

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

"Delete the current buffer
nmap <leader>bd :bd<CR>

" NerdTreeToggle
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

" Set current file's directory as the vim directory
nnoremap <leader>c :cd %:p:h<CR>
nnoremap <leader>r :NERDTreeFind<cr>

" Reselect the text pasted to perform commands on it
nnoremap <leader>pv V`]

" Visually select last edited/pasted text
" http://vimcasts.org/episodes/bubbling-text/
nnoremap <leader>gp `[v`]

nmap <leader>f :call ListTrans_toggle_format()<CR>
vmap <leader>fl :call ListTrans_toggle_format('visual')<CR>

" center the cursor vertically
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" -----------------------------------------------------------------------------

" Mappings {{{1

" Removes highlight of your last search
" noremap <C-h> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>

" Exit back to normal mode
inoremap jj <ESC>
inoremap kk <ESC>
cmap jj <esc>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x

" Steve Losh
" noremap H ^
" noremap L $
vnoremap L g_

" Drew Neil
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" allow command line editing like emacs
cnoremap <C-A>      <Home>
cnoremap <C-B>      <Left>
cnoremap <C-E>      <End>
cnoremap <C-F>      <Right>
cnoremap <C-N>      <End>
cnoremap <C-P>      <Up>
cnoremap <ESC>b     <S-Left>
cnoremap <ESC><C-B> <S-Left>
cnoremap <ESC>f     <S-Right>
cnoremap <ESC><C-F> <S-Right>
cnoremap <ESC><C-H> <C-W>

" gi already moves to 'last place you exited insert mode', so we'll map gI to
" something similar: move to last change
nnoremap gI `.

" Move by display lines.
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

" Insert Mode Completion
inoremap <c-f> <c-x><c-f>
inoremap <c-]> <c-x><c-]>
inoremap <c-l> <c-x><c-l>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zz
nnoremap # #zz

" Same when jumping around
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz

" Search and replace shortcut
noremap sg :%s///g<LEFT><LEFT>
vnoremap sg :s///g<LEFT><LEFT>


" Make arrow keys move visual blocks around
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()
vmap  <expr>  <C-D>    DVB_Duplicate()

" Convert to/from spaces/tabs...
nmap <C-T>s :set   expandtab<CR>:%retab!<CR>
nmap <C-T>t :set noexpandtab<CR>:%retab!<CR>

nnoremap <F5> :GundoToggle<CR>
nmap <F4> :TagbarToggle<CR>

inoremap <expr>  <C-K>   BDG_GetDigraph()
"inoremap <expr>  <C-K>   HUDG_GetDigraph()

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap


" Editing readonly files and saving them
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!
""cmap W!! w !sudo tee % >/dev/null
command! Wq :execute ':W' | :q
command! WQ :Wq

" Extended Text Objects {{{
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
" }}}

" -----------------------------------------------------------------------------

" Plugins-Setting {{{1
" Pandoc {{{
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0

let g:pandoc#command#autoexec_command = "Pandoc! pdf -Vpapersize:'a4paper' -Vdocumentclass=article -Vgeometry:margin=1in"

"pandoc --toc --number-sections --latex-engine=xelatex -V fontsize=11pt -V geometry:margin=3cm -V papersize=a4paper --template=./default.latex
map <leader>p :Pandoc! pdf  -Vpapersize:'a4paper' -Vdocumentclass=article -Vgeometry:margin=1in<cr>
map <leader>P :Pandoc! pdf --toc --number-sections -Vpapersize:'a4paper' -Vdocumentclass=report -Vgeometry:margin=1in<cr>

":Pandoc! html
" }}}
" Powerline/Airline {{{2
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" 2}}}
" Jedi-Vim {{{
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "left"

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
" }}}
" EasyMotion {{{

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2

map <leader><leader>l <Plug>(easymotion-lineforward)
map <leader><leader>j <Plug>(easymotion-j)
map <leader><leader>k <Plug>(easymotion-k)
map <leader><leader>h <Plug>(easymotion-linebackward)

" keep cursor colum when JK motion
let g:EasyMotion_startofline = 0

" }}}
" vim-templates {{{
let g:email='praveen.sxi@gmail.com'
let g:user='praveenkumarsrinivasan'
 " }}}
" vim-markdown {{{2
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_math=1
" 2}}}
" FuzzyFinder {{{2
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 400
let g:fuf_file_exclude = '\v\~$|\.(DS_Store|o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_mrufile_exclude = '\v\~$|\.(DS_Store|o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_buffer_keyDelete = '<C-d>'

nnoremap ''  :b#<cr>
nnoremap 'k  :FufBuffer<cr>
nnoremap 'h  :FufFile $HOME/<cr>
nnoremap 'V  :FufFile $HOME/.vim/<cr>
nnoremap 'v  :e! $MYVIMRC<cr><cr>
nnoremap 'z  :e! $HOME/.zshrc<cr><cr>
nnoremap '/  :FufFile /<cr>
nnoremap 'dd :FufFile ~/dotfiles/praveenkumarsrinivasan/dotfiles/<cr>
nnoremap 'd  :FufFile $HOME/Dropbox/<cr>
nnoremap 'g  :FufFile $HOME/Google Drive/<cr>
nnoremap '.  :FufFileWithCurrentBufferDir<cr>
nnoremap 'c  :FufFile $PWD/<cr>

nnoremap 'b  :FufBookmarkDir<cr>
nnoremap 'B  :FufBookmarkFileAdd<cr>

nnoremap 'f  :FufFile<cr>
nnoremap 'F  :FufFile **/<cr>
nnoremap 'm  :FufMruFile<cr>
nnoremap 'M  :FufMruCmd<cr>
nnoremap 't  :FufTag<cr>

" 2}}}
" vim-surround {{{2
let g:surround_42 = "**\r**"
nnoremap ** :exe "norm v$hS*"<cr>
nnoremap __ :exe "norm v$hS_"<cr>
vmap * S*
vmap _ S_
vmap <leader>l <Plug>VSurround]%a(<C-r><C-p>+)<Esc>
" 2}}}
" Tabular {{{
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction
" }}}
" Easy-Align {{{
" 1. Set global g:easy_align_ignore_unmatched to zero
let g:easy_align_ignore_unmatched = 0
" }}}
" vim-javascript {{{
let javascript_enable_domhtmlcss=1
let b:javascript=1
" }}}
" syntastic {{{2
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_highlighting = 0
" 2}}}
" YouCompleteMe {{{2
let g:ycm_global_ycm_extra_conf = '$HOME/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'


" 2}}}
" Tagbar {{{2
let g:tagbar_width = 80
let g:tagbar_sort = 0
" 2}}}
" vim-latex {{{

" set default target to pdf
let g:Tex_DefaultTargetFormat = 'pdf'

let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Pwww -o $*.ps $*.dvi'
let g:Tex_CompileRule_pspdf = 'ps2pdf $*.ps'
let g:Tex_CompileRule_dvipdf = 'dvipdfm $*.dvi'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'

let g:Tex_ViewRule_dvi = 'texniscope'
let g:Tex_ViewRule_ps = 'Preview'
let g:Tex_ViewRule_pdf = 'Skim'

let g:Tex_FormatDependency_ps  = 'dvi,ps'
let g:Tex_FormatDependency_pspdf = 'dvi,ps,pspdf'
let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf'

"let g:Tex_TreatMacViewerAsUNIX = 1
"let g:Tex_ExecuteUNIXViewerInForeground = 1

"let g:Tex_ViewRule_ps = 'open -a Skim'
"let g:Tex_ViewRule_pdf = 'open -a /Applications/Skim.app'
"let g:Tex_ViewRule_dvi = 'open -a /Applications/texniscope.app'

" Define dependency
"let g:Tex_FormatDependency_pdf = 'dvi,pdf'
let fortran_free_source=1

set grepprg=grep\ -nH\ $*

" The filetype of empty .tex files defaults to 'plaintex' instead of 'tex',
" which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" If you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels.
set iskeyword+=:

" }}}
" neocomplete {{{

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 0
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <TAB>: Completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" }}}
" YankRing {{{
nnoremap <F6> :YRShow<CR>
" save yankring entries across vim instances
let g:yankring_persist = 1

let g:yankring_share_between_instances = 1

" don't save duplicates
let g:yankring_ignore_duplicate = 1

" have yankring manage Vim's numbered registers ("0-"9)
let g:yankring_manage_numbered_reg = 1

let g:yankring_history_dir = '~/.vim/tmp/yankring/'

" if something changes the default register without going through yankring, use
" the default register value rather than the top item in yankring's history
let g:yankring_paste_check_default_buffer = 1

"}}}

" -----------------------------------------------------------------------------