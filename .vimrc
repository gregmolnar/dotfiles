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
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'
Plugin 'scrooloose/nerdtree'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'justinmk/vim-dirvish'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-unimpaired'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'slim-template/vim-slim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
Bundle 'KurtPreston/vim-autoformat-rails'
Plugin 'austintaylor/vim-indentobject'
Plugin 'majutsushi/tagbar'
Plugin 'rking/ag.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'pangloss/vim-javascript'
" List ends here. Plugins become visible to Vim after this call.
call vundle#end()
map <C-n> :NERDTreeToggle<CR>
colorscheme railscasts
set directory=/tmp
set number
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

