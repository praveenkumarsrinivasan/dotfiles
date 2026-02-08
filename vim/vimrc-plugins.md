# Vimrc Plugin Reference

A review of all plugins in `.vimrc`, organized by the file's own categorization.
Plugins that are commented out in the vimrc are excluded from this list.

---

## Core Plugins

| # | Plugin | Description | Verdict |
|---|--------|-------------|---------|
| 1 | `bling/vim-airline` | Lightweight status/tabline that shows buffers, mode, git branch, file encoding, and more. Highly configurable. | **Essential** |
| 2 | `flazz/vim-colorschemes` | A massive collection of Vim color schemes. The vimrc uses `badwolf` from this pack. | **Essential** |
| 3 | `vim-scripts/fuzzyfinder` | Fuzzy matching for files, buffers, tags, bookmarks, and MRU files. Requires `L9` library. | **Redundant** -- overlaps heavily with CtrlP (also installed). Pick one. |
| 4 | `scrooloose/nerdtree` | File system explorer sidebar. Toggle with `<leader>n`. | **Essential** |
| 5 | `scrooloose/nerdcommenter` | Rich commenting plugin with many styles (toggle, sexy, minimal, etc.). | **Redundant** -- `vim-commentary` (also installed) does the same thing more simply. Pick one. |
| 6 | `vim-multiple-cursors` | Sublime Text-style multiple cursors. Select a word, press the mapped key to get cursors on all occurrences. | **Non-essential** -- useful but niche; most tasks can be done with `:s` or macros. |
| 7 | `rstacruz/sparkup` | Write HTML in CSS-like syntax and expand it (e.g., `div.container>ul>li*3`). | **Non-essential** -- only useful if you write HTML frequently. Overlaps with emmet-vim. |
| 8 | `aperezdc/vim-template` | Auto-inserts boilerplate (author, date, license) when creating new files based on file type. | **Non-essential** -- convenience only. |
| 9 | `drmingdrmer/xptemplate` | Code snippet/template engine with placeholders and live editing. | **Redundant** -- UltiSnips (also installed) is the more popular and maintained choice. |
| 10 | `davidhalter/jedi-vim` | Python autocompletion, goto definition, documentation, and refactoring via the Jedi library. | **Essential** (if writing Python) |
| 11 | `ervandew/supertab` | Use `<Tab>` to trigger Vim's built-in completion (omni, keyword, file path, etc.). | **Essential** |
| 12 | `godlygeek/tabular` | Align text by a pattern (e.g., align on `=`, `:`, `|`). | **Redundant** -- vim-easy-align (also installed) does the same thing. Pick one. |
| 13 | `junegunn/vim-easy-align` | Interactive alignment plugin. Select text, press `<Enter>`, then the delimiter. | **Redundant** -- overlaps with Tabular. EasyAlign has a slightly nicer interactive UX. |
| 14 | `sjl/gundo.vim` | Visualize Vim's undo tree as a sidebar graph. Toggle with `<F5>`. | **Essential** -- Vim's undo tree is powerful but unusable without a visualizer. |
| 15 | `powerline/powerline` | Fancy status line with patched fonts. | **Redundant** -- vim-airline (also installed) serves the same purpose and is lighter. Remove this. |
| 16 | `tpope/vim-fugitive` | Git integration: `:Gstatus`, `:Gblame`, `:Gdiff`, `:Gcommit`, etc. | **Essential** |
| 17 | `tpope/vim-abolish` | Smart case-preserving find/replace (`:%Subvert/facilit{y,ies}/building{,s}/g`) and coercion between `snake_case`, `camelCase`, etc. | **Non-essential** -- handy but rarely critical. |
| 18 | `tpope/vim-speeddating` | Makes `<C-a>` and `<C-x>` work on dates (e.g., increment `2024-01-15` to `2024-01-16`). | **Non-essential** -- very niche. |
| 19 | `tpope/vim-repeat` | Allows `.` (repeat) to work with plugin mappings (surround, commentary, etc.). | **Essential** -- tiny, zero-cost, fixes a real gap. |
| 20 | `tpope/vim-surround` | Add/change/delete surrounding characters: `cs"'` changes `"hello"` to `'hello'`. | **Essential** |
| 21 | `majutsushi/tagbar` | Displays tags (functions, classes, variables) in a sidebar via ctags. Toggle with `<F4>`. | **Essential** (for navigating large codebases) |
| 22 | `Lokaltog/vim-easymotion` | Highlights possible jump targets with letter labels for fast cursor movement. | **Essential** |
| 23 | `atweiden/vim-dragvisuals` | Drag visual blocks with arrow keys in visual mode. | **Non-essential** -- fun but rarely used in practice. |
| 24 | `vim-scripts/YankRing.vim` | Maintains a history of yanked/deleted text. Cycle through past yanks when pasting. `<F6>` shows history. | **Essential** |
| 25 | `timestamp.vim` | Automatically updates timestamps in files on save. | **Non-essential** -- very specialized. |
| 26 | `SirVer/ultisnips` | Powerful snippet engine with tab stops, placeholders, Python interpolation, and nested snippets. | **Essential** |
| 27 | `honza/vim-snippets` | Community-maintained snippet library for UltiSnips and other engines. Covers most languages. | **Essential** (companion to UltiSnips) |

---

## Level-1 Plugins (Important)

| # | Plugin | Description | Verdict |
|---|--------|-------------|---------|
| 28 | `nixon/vim-vmath` | Perform math (sum, average, min, max) on visually selected numbers. | **Non-essential** -- niche use case. |
| 29 | `BriceSD/hlnext` | Blinks/highlights the next search match so you don't lose it. | **Non-essential** -- minor visual aid. |
| 30 | `andyhunne/vim-visualguide` | Displays a visual column guide. | **Non-essential** -- `set colorcolumn=120` does this natively. |
| 31 | `andyhunne/vim-foldsearches` | Filter folds to show only search matches. | **Non-essential** -- useful but obscure. |
| 32 | `scrooloose/syntastic` | Runs external syntax checkers (linters) on save and displays errors in the gutter. | **Essential** |
| 33 | `tpope/vim-commentary` | Toggle comments with `gcc` (line) or `gc` (motion/visual). | **Redundant** -- does the same job as NERDCommenter. Commentary is simpler; pick one. |
| 34 | `Shougo/vimshell` | A shell implemented in Vimscript. Run shell commands inside Vim. | **Non-essential** -- Vim's built-in `:terminal` (Vim 8+) or `:!` makes this unnecessary. |
| 35 | `Shougo/vimproc.vim` | Asynchronous execution library. Required by vimshell and some other Shougo plugins. | **Non-essential** -- only needed if you keep vimshell. Vim 8+ has native `job`/`channel`. |
| 36 | `kien/rainbow_parentheses.vim` | Colors matching parentheses/brackets in different colors for easier nesting visualization. | **Non-essential** -- helpful for Lisp-like code, otherwise a visual nicety. |
| 37 | `mattn/emmet-vim` | Expand CSS-like abbreviations into HTML/CSS (e.g., `div>p#foo$*3` + `<C-y>,`). | **Essential** (if writing HTML/CSS regularly) |
| 38 | `pangloss/vim-javascript` | Enhanced JavaScript syntax highlighting and indentation. | **Essential** (if writing JavaScript) |
| 39 | `plasticboy/vim-markdown` | Markdown syntax highlighting, folding, and concealing. | **Essential** (if writing Markdown) |
| 40 | `vim-scripts/vim-addon-json-encoding` | JSON encoding/decoding utilities for Vimscript. | **Non-essential** -- library plugin, rarely used directly. |
| 41 | `jcf/vim-latex` | Full LaTeX editing suite: compilation, forward/inverse search, templates, and auto-completion. | **Essential** (if writing LaTeX) |
| 42 | `vim-pandoc/vim-pandoc` | Integration with Pandoc for document conversion (Markdown to PDF, HTML, etc.). | **Non-essential** -- only useful if you use the Pandoc workflow. |

---

## Level-2 Plugins (Rarely Used)

| # | Plugin | Description | Verdict |
|---|--------|-------------|---------|
| 43 | `kien/ctrlp.vim` | Fuzzy file, buffer, and MRU finder triggered by `<C-p>`. | **Redundant** -- overlaps with FuzzyFinder. CtrlP is generally more popular; keep one. |
| 44 | `Shougo/vimproc` | Duplicate entry of `Shougo/vimproc.vim` (same plugin listed twice). | **Remove** -- literal duplicate. |
| 45 | `nvie/vim-flake8` | Runs flake8 (Python PEP8 + pyflakes) on the current file. Shows errors in quickfix. | **Redundant** -- Syntastic already supports flake8 as a checker. |
| 46 | `vim-scripts/L9` | Vim-script utility library. Required by FuzzyFinder. | **Dependency** -- only needed if you keep FuzzyFinder. |
| 47 | `vim-scripts/TwitVim` | A Twitter client inside Vim. Read timeline, post tweets, search. | **Non-essential** -- novelty plugin, not related to editing. |
| 48 | `vim-scripts/autotags` | Automatically regenerates ctags when saving files. | **Non-essential** -- useful with Tagbar, but can be replaced by a simple autocmd or git hooks. |
| 49 | `vim-scripts/bufkill.vim` | Close a buffer without closing its window (`:BD`, `:BW`). | **Non-essential** -- the vimrc already has `<leader>bq` doing `bp | bd #` which achieves similar behavior. |
| 50 | `gioele/vim-autoswap` | Automatically handles swap file conflicts (asks to diff, recover, or delete). | **Non-essential** -- swap files are disabled in this vimrc (`set noswapfile`), making this plugin useless. |

---

## Level-3 Plugins (Personal/Small)

| # | Plugin | Description | Verdict |
|---|--------|-------------|---------|
| 51 | `derekwyatt/vim-fswitch` | Quickly switch between companion files (e.g., `.h` and `.cpp`, `.js` and `.test.js`). | **Non-essential** -- only useful for C/C++ or similar paired-file workflows. |

---

## Summary: Recommended Cleanup

### Redundancies to resolve (pick one from each pair)

| Conflict | Keep | Remove | Reason |
|----------|------|--------|--------|
| vim-airline vs powerline | **vim-airline** | powerline | Airline is lighter and better integrated with Vim |
| NERDCommenter vs vim-commentary | **vim-commentary** | nerdcommenter | Commentary is simpler and works with `vim-repeat` |
| Tabular vs vim-easy-align | **vim-easy-align** | tabular | EasyAlign has a nicer interactive mode |
| FuzzyFinder + L9 vs CtrlP | **CtrlP** | fuzzyfinder + L9 | CtrlP is more widely used and needs no dependencies |
| UltiSnips vs xptemplate | **UltiSnips** | xptemplate | UltiSnips is more actively maintained |
| sparkup vs emmet-vim | **emmet-vim** | sparkup | Emmet is the industry standard |
| Syntastic vs vim-flake8 | **Syntastic** | vim-flake8 | Syntastic already integrates flake8 |

### Plugins safe to remove

| Plugin | Reason |
|--------|--------|
| `Shougo/vimproc` | Duplicate of `vimproc.vim` |
| `Shougo/vimshell` + `Shougo/vimproc.vim` | Vim 8+ has built-in `:terminal` |
| `vim-scripts/TwitVim` | Not an editing tool |
| `gioele/vim-autoswap` | Swap files are disabled in this config |
| `timestamp.vim` | Very specialized, rarely needed |
| `vim-scripts/vim-addon-json-encoding` | Library with no direct use |
| `andyhunne/vim-visualguide` | Native `set colorcolumn` does the same |

### Essential plugin shortlist (universal, language-agnostic)

These are the plugins worth keeping regardless of what languages you work with:

1. **vim-airline** -- status line
2. **flazz/vim-colorschemes** -- color themes
3. **NERDTree** -- file explorer
4. **vim-commentary** -- commenting
5. **vim-surround** -- surround editing
6. **vim-repeat** -- make `.` work with plugins
7. **vim-fugitive** -- git
8. **vim-easymotion** -- fast navigation
9. **CtrlP** -- fuzzy finder
10. **UltiSnips + vim-snippets** -- snippets
11. **Syntastic** -- linting
12. **Tagbar** -- code navigation
13. **Gundo** -- undo tree
14. **YankRing** -- yank history
15. **SuperTab** -- tab completion
16. **vim-easy-align** -- text alignment

### Language-specific essentials

- **Python**: jedi-vim
- **JavaScript**: vim-javascript
- **HTML/CSS**: emmet-vim
- **LaTeX**: vim-latex
- **Markdown**: vim-markdown
