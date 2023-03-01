local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim' -- Common 
  use 'vim-jp/vimdoc-ja' -- japanese document

  -- use { "catppuccin/nvim", as = "catppuccin" } -- colorscheme
  -- use "EdenEast/nightfox.nvim" -- Packer
  -- use 'folke/tokyonight.nvim'
  use 'ishan9299/nvim-solarized-lua'
  use 'rose-pine/neovim'
  use 'sainnhe/everforest'
  use 'eddyekofo94/gruvbox-flat.nvim'
  -- use 'svrana/neosolarized.nvim'
  use 'folke/lsp-colors.nvim'
  -- use 'tjdevries/colorbuddy.nvim'

  use 'lukas-reineke/indent-blankline.nvim'
  use 'antoinemadec/FixCursorHold.nvim'

  use 'nvim-lualine/lualine.nvim' -- Statusline

  use 'zefei/vim-wintabs'
  use 'zefei/vim-wintabs-powerline'

  use 'lambdalisue/fern.vim'
  use 'lambdalisue/nerdfont.vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/glyph-palette.vim'

  -- coc.nvim
  use {'neoclide/coc.nvim', branch = 'release'}

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'digitaltoad/vim-pug'

  use 'nvim-telescope/telescope.nvim'
  use {
    "nvim-telescope/telescope-frecency.nvim",
    requires = {"kkharji/sqlite.lua"}
  }
  use 'xiyaowong/telescope-emoji.nvim'
  use 'fannheyward/telescope-coc.nvim'

  -- use {
  --   "folke/todo-comments.nvim",
  --   requires = "nvim-lua/plenary.nvim",
  -- }

  use 'windwp/nvim-autopairs' 
  use 'windwp/nvim-ts-autotag'
  use 'numToStr/Comment.nvim'
  -- use "terrortylor/nvim-comment"
  -- use 'machakann/vim-sandwich'
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  })

  use 'kevinhwang91/nvim-hlslens'

  use 'rust-lang/rust.vim'

  use 'prettier/vim-prettier'

  use 'norcalli/nvim-colorizer.lua' 
  use 'kdheepak/lazygit.nvim'
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use 'simeji/winresizer'

  use 'eandrju/cellular-automaton.nvim' 
end)
