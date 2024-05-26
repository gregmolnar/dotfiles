local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("lazy").setup({
  'KurtPreston/vim-autoformat-rails',
  'MarSoft/nerdtree-grep-plugin',
  'MarcWeber/vim-addon-mw-utils',
  'NLKNguyen/papercolor-theme',
  'airblade/vim-gitgutter',
  'airblade/vim-gitgutter',
  'szw/vim-maximizer',
  'ajmwagar/vim-deus',
  'austintaylor/vim-indentobject',
  'austintaylor/vim-indentobject',
  'cakebaker/scss-syntax.vim',
  'catppuccin/nvim',
  'ctrlpvim/ctrlp.vim',
  'danilo-augusto/vim-afterglow',
  'dense-analysis/ale',
  'editorconfig/editorconfig-vim',
  'godlygeek/tabular',
  'honza/vim-snippets',
  'jpo/vim-railscasts-theme',
  'junegunn/fzf',
  'junegunn/fzf.vim',
  'junegunn/vim-easy-align',
  'junegunn/vim-emoji',
  'justinmk/vim-dirvish',
  'majutsushi/tagbar',
  'nvim-tree/nvim-tree.lua',
  'pangloss/vim-javascript',
  'scrooloose/nerdtree',
  'scrooloose/nerdtree',
  'scrooloose/syntastic',
  'slim-template/vim-slim',
  'stevearc/dressing.nvim',
  'thoughtbot/vim-rspec',
  'tomtom/tlib_vim',
  'tpope/vim-bundler',
  'tpope/vim-commentary',
  'tpope/vim-commentary',
  'tpope/vim-eunuch',
  'tpope/vim-fugitive',
  'tpope/vim-pastie',
  'tpope/vim-rails',
  'tpope/vim-repeat',
  'tpope/vim-sensible',
  'tpope/vim-surround',
  'tpope/vim-unimpaired',
  'vim-maximizer',
  'vim-ruby/vim-ruby',
  'vim-scripts/Align',
  'vim-test/vim-test',
  'vim-crystal/vim-crystal',
  'whatyouhide/vim-gotham',
  'AndrewRadev/splitjoin.vim',
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- 'garbas/vim-snipmate',
  -- 'kkharji/saga.nvim',
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- {
    --   "folke/which-key.nvim",
    --   event = "VeryLazy",
    --   init = function()
    --     vim.o.timeout = true
    --     vim.o.timeoutlen = 300
    --   end,
    --   opts = {
    --     -- your configuration comes here
    --     -- or leave it empty to use the default settings
    --     -- refer to the configuration section below
    --     mode = "n",
    --   }
-- }
  },
  { import = "greg.plugins" },
},
{
  install = {
    colorscheme = { "catppuccin" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

require("nvim-tree").setup()

-- require'lspconfig'.stimulus_ls.setup({
--   filetypes = { "html", "ruby", "eruby", "haml" }
-- })
