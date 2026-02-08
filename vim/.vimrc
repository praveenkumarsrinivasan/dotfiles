" .vimrc
" Author: Praveen Kumar Srinivasan
" Email: praveen.sxi@gmail.com

" -----------------------------------------------------------------------------
" Setup {{{1
" -----------------------------------------------------------------------------
" Bootstrap Vim by disabling vi compatibility and initializing the Vundle
" plugin manager. This must come before any plugin or filetype configuration.
" -----------------------------------------------------------------------------

set nocompatible
filetype off

" Initialize Vundle
set rtp+=~/.vim/autoload/Vundle.vim/

" -----------------------------------------------------------------------------
" Plugins {{{1
" -----------------------------------------------------------------------------
" All plugins managed by Vundle. Organized by category: UI & navigation,
" editing helpers, completion & snippets, and syntax & linting.
" -----------------------------------------------------------------------------

call vundle#begin()

" UI & Navigation {{{2
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'sjl/gundo.vim'
" 2}}}
" Editing {{{2
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-scripts/YankRing.vim'
" 2}}}
" Completion & Snippets {{{2
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" 2}}}
" Syntax & Linting {{{2
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
" 2}}}

call vundle#end()
filetype plugin indent on

" -----------------------------------------------------------------------------
" Options {{{1
" -----------------------------------------------------------------------------
" Core Vim settings grouped by concern. Each subsection tunes a specific aspect
" of the editor: appearance, indentation, text handling, search behavior,
" window management, input, encoding, whitespace display, folding, history,
" backup/swap files, dictionary, wildmenu completion, and tag resolution.
" -----------------------------------------------------------------------------

" Colors & UI {{{2
" Terminal color depth, colorscheme, font, and general appearance settings.
set t_Co=256
set background=dark
colorscheme badwolf
set guifont=Monaco:h13
set guioptions=acg
syntax enable
set number
set laststatus=2
set showcmd
set shortmess=filnxtToOI
set display+=lastline
set visualbell t_vb=".
set colorcolumn=120
" 2}}}

" Indentation {{{2
" Tab width, shift behavior, and automatic indentation rules.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set smartindent
set autoindent
set copyindent
set smarttab
" 2}}}

" Text & Wrapping {{{2
" Line wrapping, line-break behavior, join spacing, and end-of-line handling.
set linebreak
set textwidth=0
set wrapmargin=0
set wrap
set nojoinspaces
set binary
set noeol
" 2}}}

" Search {{{2
" Incremental, highlighted search with smart case sensitivity.
set hlsearch
set incsearch
set ignorecase
set smartcase
" 2}}}

" Buffers & Windows {{{2
" Hidden buffers, split positioning, and auto-read/write behavior.
set hidden
set splitbelow
set splitright
set noequalalways
set autoread
set autowrite
" 2}}}

" Input & Behavior {{{2
" Backspace, paste toggle, mouse, clipboard, virtual editing, and rendering.
set backspace=indent,eol,start
set pastetoggle=<F2>
set mouse=a
set clipboard=unnamed
set virtualedit=block
set timeoutlen=600
set ttyfast
set lazyredraw
" 2}}}

" Encoding {{{2
" Character encoding and file format preferences.
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
" 2}}}

" Visible Whitespace {{{2
" Display invisible characters (tabs, EOL, extends, precedes) for clarity.
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set showbreak=↪
" 2}}}

" Folding {{{2
" Fold method, nesting level, and which actions auto-open folds.
set foldmethod=syntax
set fml=1
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
" 2}}}

" History & Undo {{{2
" Command history depth and persistent undo across sessions.
set history=1000
set undolevels=1000
set undofile
" 2}}}

" Backup & Swap {{{2
" Store backups and undo files in dedicated directories; disable swap files.
" Automatically create missing directories on startup.
set backup
set noswapfile
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backupskip=/tmp/*,/private/tmp/*"

if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
" 2}}}

" Dictionary {{{2
" Custom spelling dictionary for word completion.
set dictionary=~/.vim/spell/en.utf-8.add.spl
" 2}}}

" Wildmenu {{{2
" Enhanced command-line completion with longest-match behavior, plus patterns
" to ignore (VCS dirs, build artifacts, images, OS junk, etc.).
set wildmenu
set wildmode=list:longest,list:full

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
" 2}}}

" Tags {{{2
" Search for a tags file upward from the current file to $HOME.
set tags=tags;$HOME
" 2}}}

" -----------------------------------------------------------------------------
" AutoCommands {{{1
" -----------------------------------------------------------------------------
" Automatic actions triggered by editor events: window resizing, focus loss
" auto-save, filetype-specific fold methods, restoring cursor position,
" opening help in tabs, and vimrc auto-reload.
" -----------------------------------------------------------------------------

if has('autocmd')

    " Resize splits when the window is resized
    au VimResized * :wincmd =

    " Save when losing focus
    au FocusLost * :silent! wall

    " Set foldmethod for vim {{{2
    au FileType vim setlocal foldmethod=marker
    au bufwritepost * call VimToggleFoldOnWrite()

    function! VimToggleFoldOnWrite()
        if &ft=='vim'
            setlocal foldmethod=marker
            call ToggleFold()
            call ToggleFold()
            execute 'normal! "zv'
        endif
    endfunction
    " 2}}}

    " Return to the same line when reopening a file {{{2
    " Restore the cursor to the last known position when re-opening a buffer.
    augroup line_return
        au!
        au BufReadPost *
                    \ if line("'\"") > 0 && line("'\"") <= line("$") |
                    \     execute 'normal! g`"zvzz' |
                    \ endif
    augroup END
    " 2}}}

    " Show help files in a new tab {{{2
    " Open Vim help buffers in their own tab for easier reading.
    let g:help_in_tabs = 1

    augroup HelpInTabs
        autocmd!
        autocmd BufEnter  *.txt   call HelpInNewTab()
    augroup END

    function! HelpInNewTab ()
        if &buftype == 'help' && g:help_in_tabs
            execute "normal \<C-W>T"
        endif
    endfunction
    " 2}}}

    " Auto-reload vimrc on save {{{2
    " Automatically source vimrc whenever it is written so changes take effect
    " immediately.
    augroup VimReload
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
    augroup END
    " 2}}}

endif

" -----------------------------------------------------------------------------
" Functions {{{1
" -----------------------------------------------------------------------------
" Utility functions for toggling line number style, switching fold methods,
" creating spaceless abbreviations, and toggling UTF-8 / terminal encoding.
" -----------------------------------------------------------------------------

" Toggle LineNumber Style {{{2
" Switch between absolute and relative line numbers.
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
" Alternate between syntax-based and marker-based folding.
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

" Abbreviations {{{2
" Helpers for creating insert-mode abbreviations that consume the trailing
" space character, producing cleaner expansions.
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
" 2}}}

" Toggle UTF8 {{{2
" Switch between UTF-8 and Latin-1 file encoding, and toggle the macOS
" Terminal profile to match.
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
" 2}}}

" -----------------------------------------------------------------------------
" Leaders {{{1
" -----------------------------------------------------------------------------
" Leader key bindings organized by purpose: file operations, black-hole
" deletion, search toggles, window/buffer management, whitespace handling,
" selection, vimrc editing, NERDTree, directory navigation, paste reselection,
" and scroll centering.
" -----------------------------------------------------------------------------

let mapleader = ","
let maplocalleader = "\\"

" File operations
" Quickly save, quit, or retab the current buffer.
nnoremap <leader>z :wq!<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>w :w!<cr>
nnoremap <leader>rt :retab<CR>:w!<CR>

" Black hole deletion
" Delete or paste without overwriting the default register.
nnoremap <leader>d "_d
nnoremap <leader>D "_D
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

" Search
" Clear highlights, toggle spell check, or sort visual selections.
nnoremap <leader>S :nohlsearch<CR>
nnoremap <leader>s :set spell!<cr>
vnoremap <Leader>s :sort<CR>

" Windows
" Open new splits in each direction relative to the current window.
nmap <leader>wh :topleft  vnew<CR>
nmap <leader>wl :botright vnew<CR>
nmap <leader>wk :topleft  new<CR>
nmap <leader>wj :botright new<CR>

" Buffers
" Create or clone buffers in directional splits and navigate by number.
nmap <leader>nh :leftabove  vnew<CR>
nmap <leader>nl :rightbelow vnew<CR>
nmap <leader>nk :leftabove  new<CR>
nmap <leader>nj :rightbelow new<CR>

nmap <leader>sh :leftabove  vs %<CR>
nmap <leader>sl :rightbelow vs %<CR>
nmap <leader>sk :leftabove  sb %<CR>
nmap <leader>sj :rightbelow sb %<CR>

noremap <leader>v :rightbelow vnew<cr>
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <Leader>g :e#<CR>

nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
nmap <leader>bd :bd<CR>

" Wrap & whitespace
" Toggle line wrapping and strip trailing whitespace.
nnoremap <leader>W :set wrap!<cr>
nnoremap <leader>ww :%s/\s\+$//<cr>:let @/=''<CR>

" Select all
map <Leader>a ggVG

" Vimrc editing
" Open or re-source vimrc on the fly.
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

" NERDTree
" Toggle the file explorer sidebar.
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>N :NERDTreeToggle<CR>

" Directory & file navigation
" Change to the current file's directory, reveal in NERDTree, or mkdir.
nnoremap <leader>c :cd %:p:h<CR>
nnoremap <leader>r :NERDTreeFind<cr>
nmap <leader>md :!mkdir -p %:p:h<CR>

" Reselect pasted text
nnoremap <leader>pv `[V`]
nnoremap <leader>gp `[v`]

" Center cursor vertically
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" -----------------------------------------------------------------------------
" Mappings {{{1
" -----------------------------------------------------------------------------
" General key mappings that don't use the leader key. Covers insert-mode
" escape shortcuts, buffer navigation, fold toggling, display-line movement,
" window navigation, search centering, indentation, completion shortcuts,
" tab/space conversion, plugin toggles, and custom text objects.
" -----------------------------------------------------------------------------

" Quick escape from insert mode
" Use home-row digraphs to return to normal mode without reaching for Esc.
inoremap jj <ESC>
inoremap kk <ESC>
inoremap lll <ESC>
inoremap hh <ESC>
cmap jj <esc>

" Insert file name
imap ,fn <c-r>=expand('%:t:r')<cr>

" Buffer navigation
" Cycle through buffers with Tab / Shift-Tab.
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Fold toggle with space
nnoremap <Space> za
vnoremap <Space> za

" Make BS/DEL work as expected in visual modes
vmap <BS> x

" Visual end-of-line
vnoremap L g_

" Command line navigation (emacs-style)
" Emacs-like cursor movement on the Vim command line.
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
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

" Go to last change
nnoremap gI `.

" Move by display lines
" Swap j/k with gj/gk so wrapped lines feel natural.
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" Window navigation
" Move between splits with Ctrl + h/j/k/l.
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Disable arrow keys in normal mode
" Force use of hjkl for navigation.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Insert mode completion shortcuts
" Quick access to file, tag, and line completion.
inoremap <c-f> <c-x><c-f>
inoremap <c-]> <c-x><c-]>
inoremap <c-l> <c-x><c-l>

" Better indentation (keep selection)
" Indent/outdent without losing the visual selection.
vnoremap < <gv
vnoremap > >gv

" Center search matches
" Keep the matched line in the middle of the screen while navigating results.
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz

" Search and replace shortcut
noremap sg :%s///g<LEFT><LEFT>
vnoremap sg :s///g<LEFT><LEFT>

" Tab/space conversion
" Convert between tabs and spaces for the entire file.
nmap <C-T>s :set   expandtab<CR>:%retab!<CR>
nmap <C-T>t :set noexpandtab<CR>:%retab!<CR>

" Plugin toggles
" Quick function-key access to Gundo and Tagbar.
nnoremap <F5> :GundoToggle<CR>
nmap <F4> :TagbarToggle<CR>

" EasyAlign
" Interactive alignment in visual mode (vip<Enter>) and for motions (gaip).
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Format paragraphs
vmap Q gq
nmap Q gqap

" Sudo write
" Save a file as root when you forgot to open Vim with sudo.
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command! Wq :execute ':W' | :q
command! WQ :Wq

" Extended Text Objects {{{2
" Create inner/around text objects for extra delimiters: |, \, /, :, ., *, _
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

nnoremap viz v[zo]z$
" 2}}}

" Quick file access (remapped from FuzzyFinder to CtrlP) {{{2
" Shortcuts for jumping to buffers, MRU files, tags, and dotfiles.
nnoremap ''  :b#<cr>
nnoremap 'k  :CtrlPBuffer<cr>
nnoremap 'f  :CtrlP<cr>
nnoremap 'm  :CtrlPMRU<cr>
nnoremap 't  :CtrlPTag<cr>
nnoremap 'v  :e! $MYVIMRC<cr><cr>
nnoremap 'z  :e! $HOME/.zshrc<cr><cr>
" 2}}}

" -----------------------------------------------------------------------------
" Plugin Settings {{{1
" -----------------------------------------------------------------------------
" Configuration variables and mappings for each plugin. Kept separate from
" the plugin list so Vundle declarations stay clean and all customization
" lives in one place.
" -----------------------------------------------------------------------------

" CtrlP {{{2
" Default CtrlP to buffer mode for fast buffer switching.
let g:ctrlp_cmd = 'CtrlPBuffer'
" 2}}}

" Airline {{{2
" Enable the tabline extension and show only the filename in tabs.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" 2}}}

" Jedi-Vim {{{2
" Python IDE features: go-to, documentation, rename, and completion bindings.
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#goto_command = "<localleader>d"
let g:jedi#goto_assignments_command = "<localleader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<localleader>u"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<localleader>r"
" 2}}}

" EasyMotion {{{2
" Two-character search motions with smart case and directional line motions.
let g:EasyMotion_smartcase = 1

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

map <leader><leader>l <Plug>(easymotion-lineforward)
map <leader><leader>j <Plug>(easymotion-j)
map <leader><leader>k <Plug>(easymotion-k)
map <leader><leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0
" 2}}}

" vim-markdown {{{2
" Disable default markdown keymaps; enable frontmatter and math extensions.
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_math=1
" 2}}}

" vim-surround {{{2
" Map * and _ as surround characters for bold/italic markdown shortcuts.
let g:surround_42 = "**\r**"
nnoremap ** :exe "norm v$hS*"<cr>
nnoremap __ :exe "norm v$hS_"<cr>
vmap * S*
vmap _ S_
vmap <leader>l <Plug>VSurround]%a(<C-r><C-p>+)<Esc>
" 2}}}

" EasyAlign {{{2
" Do not skip unmatched delimiters during alignment.
let g:easy_align_ignore_unmatched = 0
" 2}}}

" vim-javascript {{{2
" Enable DOM/HTML/CSS keywords in JavaScript syntax highlighting.
let javascript_enable_domhtmlcss=1
let b:javascript=1
" 2}}}

" Syntastic {{{2
" Use jshint for JavaScript linting; disable inline error highlighting.
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_highlighting = 0
" 2}}}

" UltiSnips {{{2
" Snippet expansion and jump triggers to avoid conflicts with other plugins.
let g:UltiSnipsExpandTrigger="<leader>U"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" 2}}}

" Tagbar {{{2
" Wide sidebar (80 cols) with tags in source order rather than sorted.
let g:tagbar_width = 80
let g:tagbar_sort = 0
" 2}}}

" YankRing {{{2
" Persistent, shared yank history with duplicate filtering.
nnoremap <F6> :YRShow<CR>
let g:yankring_persist = 1
let g:yankring_share_between_instances = 1
let g:yankring_ignore_duplicate = 1
let g:yankring_manage_numbered_reg = 1
let g:yankring_history_dir='$HOME/.vim/tmp/yankring/'
let g:yankring_paste_check_default_buffer = 1
" 2}}}
