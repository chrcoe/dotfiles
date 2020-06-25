" plugin manager in use: vim-plug: https://github.com/junegunn/vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Go debugger
Plug 'jodosha/vim-godebug'
" Go completion (might switch to deoplete.nvim + deoplete-go)
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
" Solarized colorscheme
" Plug 'altercation/vim-colors-solarized'
" Airline (replacement for powerline)
Plug 'vim-airline/vim-airline'
" Themes for Airline ...
Plug 'vim-airline/vim-airline-themes'
" Indent guides instead of using weird tab chars via listchar
Plug 'nathanaelkane/vim-indent-guides'
" vim fugitive for git tricks in vim
Plug 'tpope/vim-fugitive'
" goyo for distraction free writing
Plug 'junegunn/goyo.vim'
" limelight for distraction free writing (goes with goyo, but could possibly by used with
" code)
Plug 'junegunn/limelight.vim'

" put all plugins here to load .... TRY to keep it at a minimum




" Initialize plugin system
call plug#end()
" ================================== ALL PLUGINS ABOVE THIS LINE ===================================

" ============================== PLUGIN specific configs start here ================================

" ++++++------ vim-go ------++++++
"

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:go_fmt_autosave = 1
" use goimports instead of go-fmt
let g:go_fmt_command = "goimports"
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
set autowrite
" set syntax highlighting for various things .. not sure i want all of these but we'll see:
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
" highlight items with the same name when cursor is on the word
let g:go_auto_sameids = 1
" show type info by default of the item your cursor is on
let g:go_auto_type_info = 1

" ++++++------ vim-colors-solarized ------++++++
"
syntax enable
set background=dark
"colorscheme solarized
let g:solarized_visibility="medium"


" ++++++------ vim-airline ------++++++
"
let g:airline_powerline_fonts = 1
" let g:airline_theme="solarized"
let g:airline_theme="base16"

" ++++++------ vim-indent-guides ------++++++
"
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1

" ++++++------ vim-fugitive ------++++++
"
set diffopt+=vertical

" ++++++------ goyo + limelight integration ------++++++
"


" function! s:goyo_enter()
"   let b:quitting = 0
"   let b:quitting_bang = 0
"   autocmd QuitPre <buffer> let b:quitting = 1
"   cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
" endfunction
"
" function! s:goyo_leave()
"   " Quit Vim if this is the only remaining buffer
"   if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
"     if b:quitting_bang
"       qa!
"     else
"       qa
"     endif
"   endif
" endfunction
"
" autocmd! User GoyoEnter call <SID>goyo_enter()
" autocmd! User GoyoLeave call <SID>goyo_leave()

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

let g:goyo_width = 94

" Default: 0.7
let g:limelight_default_coefficient = 0.2

" Number of preceding/following paragraphs to include (default: 0)
"let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
"let g:limelight_bop = '^\s'
"let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

" for journal
autocmd BufRead,BufNewFile   *_day* set syntax=markdown ts=4 sw=4
autocmd BufRead,BufNewFile   *_day* Goyo
autocmd BufRead,BufNewFile   *journal/entries/* set syntax=markdown ts=4 sw=4
autocmd BufRead,BufNewFile   *journal/entries/* Goyo


" ============================= general config stuff BELOW THIS LINE ===============================

scriptencoding utf-8                " encode scripts as utf-8
set encoding=utf-8                  " file encoding utf-8
set ignorecase                      " case insensitive searching!
set smartcase                       " ...unless you specify a capital letter in the search somewhere
set list                            " turn on list options
" make whitespace visible
exec "set listchars=tab:°_,nbsp:_,trail:\uB7"
autocmd BufWritePre * %s/\s\+$//e   " strip ALL whitespace from ALL files on save
set number                          " turn on line numbers
set tabstop=4                       " make tab length 4 spaces instead of 8
set shiftwidth=4                    " move 4 spaces when indenting with < and >
set expandtab                       " turn tabs into spaces
set nowrap                          " turn off window wrapping
set textwidth=90                    " set the textwidth to be 100 char (originally, before customized)
set colorcolumn=+1                  " colorcolumn to be +1 of textwidth
highlight ColorColumn ctermbg=black " make it black
set modeline                        " turn on modelines


" custom todo list
augroup vimrc_todo
    au!
    au Syntax * syn match MyTodo /\v<(FIXME|NOTE|TODO|OPTIMIZE|XXX|REFACTOR):/
          \ containedin=.*Comment,vimCommentTitle
augroup END
hi def link MyTodo Todo
" TODO: I want to have the ability to call :Todo which will run:
" :vimgrep <whatever the match is> <whatever the current file is>
" followed by :cw to show the results in a buffer
" this would allow searching and quick jumping to whatever todo you need

" NOTE: possibly this will suffice for now ?
map <Leader>t :vimgrep /\v<(FIXME\|NOTE\|TODO\|OPTIMIZE\|XXX\|REFACTOR):/ % \| cw<CR>

" this will allow .yaml.j2 to be read as yaml syntactically speaking
autocmd BufRead,BufNewFile   *.yaml.j2 set syntax=yaml ts=2 sw=2
autocmd BufRead,BufNewFile   *.yaml set syntax=yaml ts=2 sw=2
autocmd BufRead,BufNewFile   *.j2 set syntax=yaml ts=2 sw=2

" markdown for md files
autocmd BufRead,BufNewFile   *.md set syntax=markdown ts=4 sw=4

" ============================ general key renampping BELOW THIS LINE ==============================

" disable arrows keys because I want to force myself to get used to hjkl
" navigation
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" get rid of shift ; to get to : commands
nnoremap ; :

