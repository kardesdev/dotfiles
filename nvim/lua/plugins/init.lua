return require('packer').startup(function()
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'RRethy/vim-illuminate'

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }
  -- sessions
  use {
    'rmagatti/auto-session'
  }

  -- themes
  use 'folke/tokyonight.nvim'
  use 'ray-x/aurora'
  use 'projekt0n/github-nvim-theme'
  use 'marko-cerovac/material.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'tiagovla/tokyodark.nvim'
  use 'navarasu/onedark.nvim'
  
  use {
    'ibhagwan/fzf-lua',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
end)
