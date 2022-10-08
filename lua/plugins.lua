local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim' -- Common 

  use { "catppuccin/nvim", as = "catppuccin" } -- colorscheme
  use "EdenEast/nightfox.nvim" -- Packer
  use 'folke/tokyonight.nvim'
  use 'rmehri01/onenord.nvim'
  use 'marko-cerovac/material.nvim'
  use 'sainnhe/sonokai'
  use 'folke/lsp-colors.nvim'
  use 'sainnhe/everforest'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'lambdalisue/nerdfont.vim'

  use 'antoinemadec/FixCursorHold.nvim'

  use 'nvim-lualine/lualine.nvim' -- Statusline

  use 'zefei/vim-wintabs'
  use 'zefei/vim-wintabs-powerline'

  use 'lambdalisue/fern.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/glyph-palette.vim'
  
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- use 'j-hui/fidget.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  -- use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'

  use 'hrsh7th/vim-vsnip'
  -- vsnip exensions for react.
  use "rafamadriz/friendly-snippets"

  use 'onsails/lspkind.nvim'

   use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    })

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'kyazdani42/nvim-web-devicons'

  --Linter + Formatter
  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })

  -- use 'MunifTanjim/prettier.nvim'

  use 'nvim-telescope/telescope.nvim'

  use 'windwp/nvim-autopairs' 
  use "terrortylor/nvim-comment"
  -- use 'mattn/emmet-vim'

  use 'norcalli/nvim-colorizer.lua' 
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  
end)
