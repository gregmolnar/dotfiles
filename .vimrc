set nocompatible              " be iMproved, required
filetype off                  " required

lua << eof
require("greg.lazy")
eof

map <C-n> :NERDTreeToggle<CR>
set directory=~/vimswp
set number
set colorcolumn=80
syntax enable
filetype plugin indent on
set tabstop=2
set shiftwidth=2
let NERDTreeShowHidden=1
let g:vim_markdown_folding_disabled = 1

" " Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)

" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

set omnifunc=htmlcomplete#CompleteTags
set omnifunc=syntaxcomplete#Complete
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules
set wildignore+=log/**,node_modules/**,target/**,tmp/**,*.rbc
" set autoindent
set autoread
" uncomment to to share the clipboard with system
set clipboard=unnamed
set expandtab
set ruler

" open search results in new tab
" let g:fzf_action = { 'enter': 'tab split' }

let mapleader = ' '
noremap <leader>l :Align
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeRefresh<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader>g :GitGutterToggle<CR>
nnoremap <leader>chs :%s/:\([^=,'"]*\) =>/\1:/g<CR>

nmap <silent> <leader>T :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Move the splits arround!
nmap <silent> <leader>w<up> <C-W><up>
nmap <silent> <leader>w<right> <C-W><right>
nmap <silent> <leader>w<down> <C-W><down>
nmap <silent> <leader>w<left> <C-W><left>

vnoremap <leader>y <s-"><s-+>y<Esc>
vnoremap <leader>y  "+y
nnoremap <leader>Y  "+yg_
nnoremap <leader>y  "+y
nnoremap <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


vnoremap <leader>p "_dP

nnoremap <leader><tab> :tabprevious<CR>
noremap sa ggVG<CR>

" maximize current split or return to previous
noremap <leader>m :MaximizerToggle<CR>

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
set nohlsearch

" this reloads nerdtree when entering pane but seems too aggressive
" autocmd BufEnter NERD_tree_* | execute 'normal R'

" " Tab navigation like Firefox.
" nnoremap <C-S-tab> :tabprevious<CR>
" nnoremap <C-tab>   :tabnext<CR>
" nnoremap <C-t>     :tabnew<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" inoremap <C-t>     <Esc>:tabnew<CR>


" use system clipboard
" https://anuragpeshne.github.io/essays/vim/7.html
" noremap y "*y
" noremap yy "*yy
" noremap Y "*y$
" noremap x "*x
" noremap dd "*dd
" noremap D "*D
" set clipboard+=unnamedplus

" plugin settings
" let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 1

" extra rails.vim help
autocmd User Rails silent! Rnavcommand decorator      app/decorators            -glob=**/* -suffix=_decorator.rb
autocmd User Rails silent! Rnavcommand observer       app/observers             -glob=**/* -suffix=_observer.rb
autocmd User Rails silent! Rnavcommand feature        features                  -glob=**/* -suffix=.feature
autocmd User Rails silent! Rnavcommand job            app/jobs                  -glob=**/* -suffix=_job.rb
autocmd User Rails silent! Rnavcommand mediator       app/mediators             -glob=**/* -suffix=_mediator.rb
autocmd User Rails silent! Rnavcommand stepdefinition features/step_definitions -glob=**/* -suffix=_steps.rb

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['rubocop', 'remove_trailing_lines', 'trim_whitespace']
\}
let g:ale_linters = {
\   'ruby': ['rubocop']
\}

let g:ale_virtualtext_cursor = 'disabled'


if empty($DISABLE_ALE)
  let g:ale_fix_on_save = 1
endif

let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim', 'javascript']

" colorscheme PaperColor
" colorscheme catppuccin-mocha " catppuccin catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
" colorscheme tokyonight

" There are also colorschemes for the different styles.
colorscheme tokyonight-night
" colorscheme tokyonight-storm
" colorscheme tokyonight-day
" colorscheme tokyonight-moon

" set guifont=JetBrainsMono-Regular:h12
set guifont=NotoSansMono-VF:h12
set backupdir=~/tmp
set pastetoggle=<F2>
