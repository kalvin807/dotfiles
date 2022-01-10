call plug#begin()

" deps
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" formatting, autocomplete
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" visual bar
Plug 'hoob3rt/lualine.nvim'

" theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

call plug#end()

" Load configurations
lua require('kal')
