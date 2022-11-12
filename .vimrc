set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Declare the list of plugins.
Plugin 'airblade/vim-gitgutter'
Plugin 'austintaylor/vim-indentobject'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'jpo/vim-railscasts-theme'
Plugin 'justinmk/vim-dirvish'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/vim-easy-align'
Bundle 'KurtPreston/vim-autoformat-rails'
Plugin 'majutsushi/tagbar'
Plugin 'MarSoft/nerdtree-grep-plugin'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-pastie'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/Align'
Plugin 'dense-analysis/ale'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'ajmwagar/vim-deus'
Plugin 'whatyouhide/vim-gotham'
Plugin 'NLKNguyen/papercolor-theme'

" List ends here. Plugins become visible to Vim after this call.
call vundle#end()
map <C-n> :NERDTreeToggle<CR>
set directory=~/vimswp
set number
set colorcolumn=80
syntax enable
filetype plugin indent on
set shiftwidth=2
let NERDTreeShowHidden=1
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set omnifunc=htmlcomplete#CompleteTags
set omnifunc=syntaxcomplete#Complete
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules
set wildignore+=log/**,node_modules/**,target/**,tmp/**,*.rbc
" set autoindent
set autoread
" uncomment to to share the clipboard with system
" set clipboard=unnamed
set expandtab
set ruler
let mapleader = ','
noremap <leader>l :Align
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeRefresh<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
nnoremap <leader>g :GitGutterToggle<CR>

nnoremap <leader><tab> :tabprevious<CR>

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
set nohlsearch


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
let g:gitgutter_enabled = 0

" use the new SnipMate parser
let g:snipMate = { 'snippet_version' : 1 }

" extra rails.vim help
autocmd User Rails silent! Rnavcommand decorator      app/decorators            -glob=**/* -suffix=_decorator.rb
autocmd User Rails silent! Rnavcommand observer       app/observers             -glob=**/* -suffix=_observer.rb
autocmd User Rails silent! Rnavcommand feature        features                  -glob=**/* -suffix=.feature
autocmd User Rails silent! Rnavcommand job            app/jobs                  -glob=**/* -suffix=_job.rb
autocmd User Rails silent! Rnavcommand mediator       app/mediators             -glob=**/* -suffix=_mediator.rb
autocmd User Rails silent! Rnavcommand stepdefinition features/step_definitions -glob=**/* -suffix=_steps.rb
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" let g:rufo_auto_formatting = 1
" let g:prettier#autoformat_require_pragma = 0
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'ruby': ['rubocop']
\}
let g:ale_fix_on_save = 1

colorscheme PaperColor
" set guifont=JetBrainsMono-Regular:h12
set guifont=NotoSansMono-VF:h12
set backupdir=~/tmp
