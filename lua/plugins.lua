local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

  -- Plugin Manager
  use 'wbthomason/packer.nvim'

  -- Common Plugin(Lua)
  use 'antoinemadec/FixCursorHold.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'vim-jp/vimdoc-ja'

  -- colorscheme
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'ishan9299/nvim-solarized-lua'
  use 'rose-pine/neovim'
  use 'sainnhe/everforest'
  use 'folke/lsp-colors.nvim'

  -- coc.nvim
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- Buffer Control
  use 'zefei/vim-wintabs'
  use 'zefei/vim-wintabs-powerline'

  -- Fern.vim
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/nerdfont.vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/glyph-palette.vim'

  --Syntax Highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'digitaltoad/vim-pug'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use {
    "nvim-telescope/telescope-frecency.nvim",
    requires = {"kkharji/sqlite.lua"}
  }
  use 'fannheyward/telescope-coc.nvim'

  -- Coding Support
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'kevinhwang91/nvim-hlslens'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'numToStr/Comment.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'simeji/winresizer'
  use({
    "kylechui/nvim-surround",
    tag = "*",
  })

  -- Rust Integration
  use 'rust-lang/rust.vim'

  -- For using Prettier
  use 'prettier/vim-prettier'

  -- Git Integration
  use 'dinhhuy258/git.nvim'
  use 'lewis6991/gitsigns.nvim'

end)
