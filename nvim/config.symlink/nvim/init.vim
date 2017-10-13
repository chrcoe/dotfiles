" plugin manager in use: vim-plug: https://github.com/junegunn/vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
" Go debugger
Plug 'jodosha/vim-godebug'
" Go completion (not sure if I want to keep this or not ...)
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
" Solarized colorscheme
Plug 'altercation/vim-colors-solarized'
" Airline (replacement for powerline)
Plug 'vim-airline/vim-airline'
" Themes for Airline ...
Plug 'vim-airline/vim-airline-themes'
" Indent guides instead of using weird tab chars via listchar
Plug 'nathanaelkane/vim-indent-guides'


" put all plugins here to load .... TRY to keep it at a minimum




" Initialize plugin system
call plug#end()
" ================================== ALL PLUGINS ABOVE THIS LINE ===================================

" ============================== PLUGIN specific configs start here ================================

" ++++++------ vim-go ------++++++
"
let g:go_fmt_autosave = 1
" use goimports instead of go-fmt
let g:go_fmt_command = "goimports"
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
set autowrite

" ++++++------ vim-colors-solarized ------++++++
"
syntax enable
set background=dark
colorscheme solarized
let g:solarized_visibility="medium"


" ++++++------ vim-airline ------++++++
"
let g:airline_powerline_fonts = 1
let g:airline_theme="solarized"

" ++++++------ vim-indent-guides ------++++++
"
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1



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
set textwidth=100                   " set the textwidth to be 100 char
set colorcolumn=+1                  " colorcolumn to be +1 of textwidth
highlight ColorColumn ctermbg=black " make it black
set modeline                        " turn on modelines





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

